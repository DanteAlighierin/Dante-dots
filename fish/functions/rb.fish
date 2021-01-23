# Defined in - @ line 1
function rb --wraps='sudo reboot' --description 'alias rb sudo reboot'
  sudo reboot $argv;
end
