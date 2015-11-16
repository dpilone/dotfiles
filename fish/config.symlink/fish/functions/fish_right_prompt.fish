# Setup colors
function fst; set_color -o fa0; end
function gray; set_color 555; end
function normal; set_color normal; end
function white; set_color white; end
function red; set_color red; end

# This was lifted from the Batman theme in oh-my-fish
function fish_right_prompt
  set -l code $status
  test $code -ne 0; and echo (gray)"("(red)"$code"(gray)") "(normal)

  if test -n "$SSH_CONNECTION"
     printf (red)":"(gray)"$HOSTNAME "(normal)
   end

   printf [(gray)(date +%H(white):(gray)%M(white):(gray)%S)(normal)]
end
