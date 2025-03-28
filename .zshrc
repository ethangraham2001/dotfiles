# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8

export AOSREPO="git@gitlab.inf.ethz.ch:course-aos2025/aos2025-hand-out.git"
export AOSDIR="/home/ethan/ethz/advanced-os"
# export BFAOS="${AOSDIR}/aos2025-hand-out"
export BFAOS="${AOSDIR}/aos2025-egraham-hand-in"
export BFBUILD="${AOSDIR}/build_milestone_1"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="juanghurtado"
# ZSH_THEME="xiong-chiamiov-plus"
# ZSH_THEME="gallifrey"
ZSH_THEME="robbyrussell"
# ZSH_THEME="fino"
USER_COLOR="%F{green}"
HOST_COLOR="%F{red}"

bindkey -v

export TERM="xterm-256color"

# local bin
export PATH=$PATH:~/bin
export PATH=$PATH:~/sbin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/ethan/ethz/cca/bin
export PATH=$PATH:/home/ethan/ethz/cca/bin/google-cloud-sdk/bin

# gdal binaries and libraries
# export PATH=$PATH:/usr/local/gdal-3.4.3/bin
export LD_LIBRARY_PATH=/usr/local/lib/gdal-3.9.0/lib:$LD_LIBRARY_PATH


# orbitalize setup
export GOPATH=${GOPATH:-$HOME/go}
export PATH=${GOPATH}/bin:$PATH
export GO111MODULE=on

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	colored-man-pages
	colorize
	# pipenv
    gitfast
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias v='nvim'
alias studio="android-studio.sh"
alias datagrip="datagrip.sh"
alias brightness="sudo brightnessctl s"
alias bat="batcat"
alias kube="kubecolor"

# servers for bpfnic
SRV6='graham@rs3labsrv6.iccluster.epfl.ch'
SRV8='graham@rs3labsrv8.iccluster.epfl.ch'
SRV9='graham@rs3labsrv9.iccluster.epfl.ch'
export SRV6
export SRV9

export EDITOR=nvim

# wiki.osdev.org cross-compiler set up
# export PREFIX="$HOME/opt/cross"
# export TARGET=i686-elf
# export PATH="$PREFIX/bin:$PATH"
# export SYSROOT="$HOME/sysroot"

# User configuration

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ethan/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ethan/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ethan/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ethan/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# >>> devkitarm initialize
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=$DEVKITPRO/devkitARM
export PATH=${DEVKITPRO}/tools/bin:$PATH
# <<< devkitarm initialize

# >>> cuda initialize
export PATH="/usr/local/cuda-12/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda-12/lib64:$LD_LIBRARY_PATH"
# <<< cuda initialize

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NVM_DIR="$HOME/.nvm"
export NVM_PREFIX="$NVM_DIR/versions/node"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

