function subl
  if test -t 0
    command subl > /dev/null 2>&1
  end

  command subl $argv
end
