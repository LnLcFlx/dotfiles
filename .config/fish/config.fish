fish_vi_key_bindings
set -gx PATH ~/scripts/ $PATH
set -x BROWSER chromium
set -x TERM tmux-256color
set -x EDITOR nvim
set DATA /run/media/lnlcflx/DATA/
set HSERVER /media/homeserver/

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
      printf '%s NORMAL %s%s' (set_color -b b7bb26; set_color --bold 282828) (set_color -b normal; set_color b8bb26) (set_color -b normal; set_color b8bb28)
    case insert
      printf '%s INSERT %s%s' (set_color -b 82a598; set_color --bold 282828) (set_color -b normal; set_color 83a598) (set_color -b normal; set_color b8bb28)
    case replace_one
      printf '%s REPLACE%s%s' (set_color -b b16285; set_color --bold 282828) (set_color -b normal; set_color b16286) (set_color -b normal; set_color b8bb26)
    case visual
      printf '%s VISUAL %s%s' (set_color -b d3869b; set_color --bold 282828) (set_color -b normal; set_color d3869b) (set_color -b normal; set_color b8bb26)
    case '*'
      printf '%s ?????? %s%s' (set_color -b red; set_color --bold 282828) (set_color -b normal; set_color red) (set_color -b b8bb26; set_color normal)
  end
  set_color normal
end

function fish_prompt
  env FISH_VERSION=$FISH_VERSION PROMPTLINE_LAST_EXIT_CODE=$status bash ~/.promptline.sh left
end

function fish_right_prompt
  env FISH_VERSION=$FISH_VERSION PROMPTLINE_LAST_EXIT_CODE=$status bash ~/.promptline.sh right
end

alias cl='clear'
alias ls='lsd'
alias config="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias wttr='curl wttr.in/Heidelberg\?lang=de'
alias wttr2='curl v2.wttr.in/Heidelberg\?lang=de'
alias rofi-calc='rofi -show calc -modi calc -no-show-match -no-sort'
alias rofi-power='~/.config/rofi/scripts/powermenu.sh'
alias rofi-mpd='~/.config/rofi/scripts/mpd.sh'

abbr ipy "jupyter console"
abbr pac "sudo pacman"
