fish_vi_key_bindings
set -x BROWSER google-chrome-stable
set -x EDITOR nvim

function fish_greeting
    # screenfetch
    # echo ''
end

function fish_mode_prompt
  switch $fish_bind_mode
    case default
      printf '%s NORMAL ' (set_color -b fabd2f; set_color --bold 282828)
    case insert
      printf '%s INSERT %s' (set_color -b b8bb26; set_color --bold 282828) (set_color -b fabd2f; set_color b8bb26)
    case replace_one
      printf '%s REPLACE%s' (set_color -b b16286; set_color --bold 282828) (set_color -b fabd2f; set_color b16286)
    case visual
      printf '%s VISUAL %s' (set_color -b d3869b; set_color --bold 282828) (set_color -b fabd2f; set_color d3869b)
    case '*'
      printf '%s ?????? %s' (set_color -b red; set_color --bold 282828) (set_color -b fabd2f; set_color red)
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
