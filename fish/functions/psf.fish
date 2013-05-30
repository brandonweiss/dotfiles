function psf
  ps -x | grep -v grep | grep $argv
end
