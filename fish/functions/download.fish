function download
  set url $argv[1]

  set filename (echo (basename $url) | sed 's/?.*//g')

  if test (count $argv) -eq 2
    set filename $argv[2]-$filename
  end

  set file ~/Downloads/$filename

  if test -e $file
    set arguments "--continue"
  end

  set arguments $arguments --output-document=$file

  wget $arguments $url
end
