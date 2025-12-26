autoload -Uz compinit; compinit
_comp_options+=(globdots)		# With hidden files

# Options
# setopt GLOB_COMPLETE			# Show autocompletion menu with globs
setopt MENU_COMPLETE				# Automatically highlight first element of completion menu
setopt AUTO_LIST					# Automatically list choices on ambiguous completion.
setopt COMPLETE_IN_WORD			# Complete from both ends of a word.

# Completers
#zzstyle ':completion:*' completer _complete _extensions _ignored _match _approximate
zstyle ':completion:*' completer _complete _extensions _approximate
# Completers configuration...
# Use cache
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$ZDOTDIR/.zcompcache"
# Allow select in a menu
zstyle ':completion:*' menu select
# Autocomplete options for cd instead of directory stack
#zstyle ':completion:*' complete-options true
# Completion matching
zstyle ':completion:*' matcher-list '+' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:]}={[:upper:]}'
#zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' keep-prefix true
zstyle ':completion:*' max-errors 3 numeric
# Use SSH configuration to suggest completions when SSH, SCP, SFTP and others
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'
