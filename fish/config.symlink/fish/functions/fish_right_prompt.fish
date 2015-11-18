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

   if set -q __fish_vi_mode
     switch $fish_bind_mode
       case default
         set_color --bold --background red white
         echo '[N]'
       case insert
         set_color --bold --background green white
         echo '[I]'
       case visual
         set_color --bold --background magenta white
         echo '[V]'
     end
     set_color normal
   end

   printf [(gray)(date +%H(white):(gray)%M(white):(gray)%S)(normal)]
end
