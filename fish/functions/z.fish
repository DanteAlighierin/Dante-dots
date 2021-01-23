# Defined in - @ line 1
function z --wraps='sudo zzz' --description 'alias z sudo zzz'
  sudo zzz $argv;
end
