function rm
  set new_arguments

  for argument in $argv
    if test $argument = "-f"
      # Do nothing
    else if test (echo $argument | cut -c1) = "-"
      set new_arguments $new_arguments (echo $argument | sed "s/f//")
    else
      set new_arguments $new_arguments $argument
    end
  end

  command rm -i $new_arguments
end
