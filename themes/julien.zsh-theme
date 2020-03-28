if [[ $UID -eq 0 ]]; then
    user_host="%{$fg_bold[red]%}%n@%m%{$reset_color%}"
    the_user_symbol='#'
else
    user_host="%{$fg_bold[green]%}%n%{$reset_color%}"
    the_user_symbol='$'
fi

# returns 0 if git directory
function is_git() {
  echo $(command git rev-parse --is-inside-work-tree 2> /dev/null)
}

function user_symbol() {
  if [[ -n $(is_git) ]]; then
      echo
  fi
  echo "%B${the_user_symbol}%b"
}

current_dir="%{$fg_bold[blue]%}%~%{$reset_color%}"

function git_prompt_info() {
    local ref
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

function git_status_info() {
  if [[ -n $(is_git) ]]; then
    if [[ -n "$(command git show-ref origin/$(git_current_branch) 2> /dev/null)" ]]; then
      # remote exists
      echo $(git_prompt_info)$(git_prompt_status)$(git_remote_status)$(git_commits_ahead)$(git_commits_behind)
    else
      echo $(git_prompt_info)$(git_prompt_status)$ZSH_THEME_GIT_PROMPT_REMOTE_MISSING
    fi
  fi
}

PROMPT='$user_host:$current_dir$(git_status_info) $(user_symbol) '

for COLOR in CYAN WHITE YELLOW MAGENTA BLACK BLUE RED DEFAULT GREEN GREY; do
    eval PR_$COLOR='%{$fg[${(L)COLOR}]%}'
    eval PR_BRIGHT_$COLOR='%{$fg_bold[${(L)COLOR}]%}'
done

ZSH_THEME_GIT_PROMPT_PREFIX="${PR_BRIGHT_RED} (${PR_BRIGHT_RED}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="${PR_BRIGHT_RED}) "
ZSH_THEME_GIT_PROMPT_DIRTY=$ZSH_THEME_GIT_PROMPT_CLEAN

ZSH_THEME_GIT_PROMPT_EQUAL_REMOTE="${PR_GREEN}✔%{$reset_color%}"

ZSH_THEME_GIT_COMMITS_AHEAD_PREFIX="${PR_CYAN}⇧ "
ZSH_THEME_GIT_COMMITS_AHEAD_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_COMMITS_BEHIND_PREFIX="${PR_RED}⇩ "
ZSH_THEME_GIT_COMMITS_BEHIND_SUFFIX="%{$reset_color%}"

DISABLE_UNTRACKED_FILES_DIRTY=true

ZSH_THEME_GIT_PROMPT_MODIFIED="${PR_YELLOW}✗ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="${PR_RED}⁉ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="${PR_GREEN}✚ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="${PR_RED}− %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="${PR_YELLOW}∓ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_STASHED="${PR_YELLOW}★ %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_REMOTE_MISSING="${PR_MAGENTA}L %{$reset_color%}"


PR_RESET="%{$reset_color%}"

