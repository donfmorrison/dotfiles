# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/donfmorrison/.oh-my-zsh"

# Show OS info when opening a new terminal
neofetch

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_THEME="powerlevel9k/powerlevel9k"

# a bunch of this came from: 
# https://medium.com/@riceboyler/my-hyper-ohmyzsh-config-3e982db30210

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git 
  colored-man-pages 
  colorize 
  pip 
  python
  brew 
  common-aliases 
  docker 
  gitfast 
  github 
  node 
  npm 
  osx 
  web-search  
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration
DEFAULT_USER="donfmorrison"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs virtualenv newline os_icon dir_writable)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status custom_wifi_signal time)
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX_ICON=$'Prompt \uF054 '

POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S}"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_PROMPT_ON_NEWLINE=false
POWERLEVEL9K_HIDE_BRANCH_ICON=false

DEFAULT_USER="donfmorrison"
POWERLEVEL9K_ALWAYS_SHOW_USER=false
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="darkorange3"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="black" 

POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_STATUS_OK_BACKGROUND="green"
POWERLEVEL9K_STATUS_OK_FOREGROUND="gray"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="red"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="white"

POWERLEVEL9K_OS_ICON_BACKGROUND="gray"
POWERLEVEL9K_OS_ICON_FOREGROUND="white"

POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="zsh_wifi_signal"
POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_BACKGROUND="gray"
POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_FOREGROUND="yellow" 

zsh_wifi_signal(){
    local output=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I)
    local airport=$(echo $output | grep 'AirPort' | awk -F': ' '{print $2}')
 
    if [ "$airport" = "Off" ]; then
        local color='%F{yellow}'
        echo -n "%{$color%}Wifi Off"
    else
        local ssid=$(echo $output | grep ' SSID' | awk -F': ' '{print $2}')
        local speed=$(echo $output | grep 'lastTxRate' | awk -F': ' '{print $2}')
        local color='%F{yellow}' 

        [[ $speed -gt 300 ]] && color='%F{green}'
        [[ $speed -lt 100 ]] && color='%F{red}' 

        echo -n "%{$color%}\uF1EB $speed Mb/s%{%f%}" # removed char not in my PowerLine font
    fi
} 

POWERLEVEL9K_CUSTOM_PROMPT="zsh_custom_prompt"
POWERLEVEL9K_CUSTOM_PROMPT_BACKGROUND="white"
POWERLEVEL9K_CUSTOM_PROMPT_FOREGROUND="gray" 

zsh_custom_prompt(){
    echo -n "\uF1EB"    
} 

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh" 

alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias zshreset="source ~/.zshrc"
alias npmclean="rm -rf node_modules/ && npm install"
alias ls="colorls --dark --sort-dirs --report -l"
alias lc="colorls --tree --dark"
