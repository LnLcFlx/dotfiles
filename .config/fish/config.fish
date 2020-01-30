fish_vi_key_bindings
set -x BROWSER google-chrome-stable
set -x EDITOR nvim
set DATA /run/media/lnlcflx/DATA/
set HSERV /media/lnlcflx/

fish_vi_cursor
set fish_cursor_insert line
set fish_cursor_default line

function fish_greeting
    # screenfetch
    # echo ''
end

function fish_mode_prompt
  switch $fish_bind_mode
    case default
      printf '%s NORMAL %s%s' (set_color -b b8bb26; set_color --bold 282828) (set_color -b 282828; set_color b8bb26) (set_color -b b8bb26; set_color 282828)
    case insert
      printf '%s INSERT %s%s' (set_color -b 83a598; set_color --bold 282828) (set_color -b 282828; set_color 83a598) (set_color -b b8bb26; set_color 282828)
    case replace_one
      printf '%s REPLACE%s%s' (set_color -b b16286; set_color --bold 282828) (set_color -b 282828; set_color b16286) (set_color -b b8bb26; set_color 282828)
    case visual
      printf '%s VISUAL %s%s' (set_color -b d3869b; set_color --bold 282828) (set_color -b 282828; set_color d3869b) (set_color -b b8bb26; set_color 282828)
    case '*'
      printf '%s ?????? %s%s' (set_color -b red; set_color --bold 282828) (set_color -b 282828; set_color red) (set_color -b b8bb26; set_color 282828)
  end
  set_color normal
end

function fish_prompt
  env FISH_VERSION=$FISH_VERSION PROMPTLINE_LAST_EXIT_CODE=$status bash ~/.promptline.sh left
end

function fish_right_prompt
  env FISH_VERSION=$FISH_VERSION PROMPTLINE_LAST_EXIT_CODE=$status bash ~/.promptline.sh right
end


alias config="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

abbr pac "sudo pacman"
abbr ipy "jupyter console"
