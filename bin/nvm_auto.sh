unset NVM_AUTO_VERSION

function nvm_auto() {
	local dir="$PWD/" version

	until [[ -z "$dir" ]]; do
		dir="${dir%/*}"

		if { read -r version <"$dir/.nvmrc"; } 2>/dev/null || [[ -n "$version" ]]; then
			version="${version%%[[:space:]]}"

			if [[ "$version" == "$NVM_AUTO_VERSION" ]]; then return
			else
				NVM_AUTO_VERSION="$version"

				nvm which "$version" > /dev/null 2>&1
				if [[ $? -ne 0 ]]; then
					echo "nvm_auto: version $version not installed. Run 'nvm install' to install it"
					return $?
				fi

				nvm use "$version"
				return $?
			fi
		fi
	done

	if [[ -z "$NVM_AUTO_NO_RESET" && -n "$NVM_AUTO_VERSION" ]]; then
		nvm use default
		unset NVM_AUTO_VERSION
	fi
}

if [[ -n "$ZSH_VERSION" ]]; then
	if [[ ! "$preexec_functions" == *nvm_auto* ]]; then
		preexec_functions+=("nvm_auto")
	fi
elif [[ -n "$BASH_VERSION" ]]; then
	trap '[[ "$BASH_COMMAND" != "$PROMPT_COMMAND" ]] && nvm_auto' DEBUG
fi
