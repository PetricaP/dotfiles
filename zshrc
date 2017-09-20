# I fyou come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export LANG="en_US.UTF-8"
export ZSH=/home/petricap/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#POWERLEVEL9K_BATTERY_LOW_FOREGROUND='white'
#POWERLEVEL9K_BATTERY_LOW_BACKGROUND='red'
#POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='black'
#POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND='cyan'
#POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='black'
#POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND='green'
#POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='black'
#POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND='yellow'
#POWERLEVEL9K_SHORTEN_DIR_LENGTH='4'
#POWERLEVEL9K_CUSTOM_FIRST='echo ">_"'
#POWERLEVEL9K_CUSTOM_FIRST_BACKGROUND="yellow"
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
#POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_1="echo signal: \$(nmcli device wifi | grep yes | awk '{print \$8}')"
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_first context root_indicator dir dir_writable vcs virtualenv)
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND=1
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND=2
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND=15
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="black" #7

#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs history time)
ZSH_THEME="gitster"
# ZSH_THEME="nicoulaj"
#ZSH_THEME="agnoster"
#ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Setup vi mode
bindkey -v
bindkey -M viins 'fd' vi-cmd-mode
vim_ins_mode=" I "
vim_cmd_mode=" N "
vim_mode=$vim_ins_mode
mode_color=yellow

function zle-keymap-select {
  vim_mode="${${KEYMAP/vicmd/${vim_cmd_mode}}/(main|viins)/${vim_ins_mode}}"
  mode_color="${${KEYMAP/vicmd/green}/(main|viins)/yellow}"
  zle reset-prompt
}
zle -N zle-keymap-select

function zle-line-finish {
  vim_mode=$vim_ins_mode
  mode_color=yellow
}
zle -N zle-line-finish
RPROMPT='%F{${mode_color}}${vim_mode}%F{white}'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias la="ls -a"
alias ll="ls -al"
alias sem="sudo emacs -nw"
alias vim="nvim"
alias vimrc="nvim ~/.SpaceVim.d/init.vim"
alias i3rc="nvim ~/.config/i3/config"
alias zshrc="nvim ~/.zshrc"
alias ta="tmux att"
alias :q="exit"
alias :wq="exit"
alias dev="dev-tmux"
alias tmux="TERM=screen-256color-bce tmux"
alias make="make || make -C build"
PATH=$PATH:/home/petricap/.gem/ruby/2.4.0/bin:.
[ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null

# define function that retrieves and runs last command
function run-again {
  # get previous history item
  zle up-history
  # confirm command
  zle accept-line
}

# define run-again widget from function of the same name
zle -N run-again

# bind widget to Ctrl+X in viins mode
bindkey -M viins '^X' run-again 
# bind widget to Ctrl+X in vicmd mode
bindkey -M vicmd '^X' run-again
export GOPATH=$HOME/golang/
export PATH=$PATH:$GOPATH/bin
clear
