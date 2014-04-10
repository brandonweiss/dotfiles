function download
  set url $argv[1]

  if test (count $argv) -eq 2
    set filename $argv[2]
  else
    set filename (echo (basename $url) | sed 's/?.*//g')
  end

  set file ~/Downloads/$filename

  if test -e $file
    set arguments "--continue"
  end

  set arguments $arguments --output-document=$file

  wget $arguments $url
end
