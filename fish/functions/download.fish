function download
  set url      $argv[1]
  set filename $argv[2]
  set file     ~/Downloads/$filename

  if test -e $file
    wget --continue --output-document=$file "$url"
  else
    wget --output-document=$file "$url"
  end
end
