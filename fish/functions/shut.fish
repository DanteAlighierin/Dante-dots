# Defined in - @ line 1
function shut --wraps='sudo shutdown -h now' --description 'alias shut sudo shutdown -h now'
  sudo shutdown -h now $argv;
end
