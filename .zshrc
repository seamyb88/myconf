# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/seamy/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="fino"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
#DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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
plugins=(git catimg sudo wd)

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias vimrc="nvim ~/.config/nvim/init.vim"
alias cs=/home/seamy/scripts/cheatsheet-master/cs
alias ls='ls --color'
alias v=nvim
alias ch=cheat.sh
alias val="valgrind --track-origins=yes --leak-check=full --leak-resolution=high"

#alias eclipse="env SWT_GTK3=0 ~/eclipse/cpp-2018-09/eclipse/eclipse"
alias eclipse_c="~/eclipse/cpp-2019-09/eclipse/eclipse"
alias eclipse_java="~/eclipse/java-2019-09/eclipse/eclipse"
alias eclipse_uml="~/eclipse/modeling-2019-09/eclipse/eclipse"

typeset -AHg FX FG BG

FX=(
    reset     "%{%}"
    bold      "%{%}" no-bold      "%{%}"
    italic    "%{%}" no-italic    "%{%}"
    underline "%{%}" no-underline "%{%}"
    blink     "%{%}" no-blink     "%{%}"
    reverse   "%{%}" no-reverse   "%{%}"
)

spectrum_ls() 
{
  for code in {000..255}; do
  print -P -- "$code: %F{$code}Test color%f"
  done
}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="/home/seamy/.cargo/bin:/home/seamy/.local/bin:/home/seamy/bin:/opt/gradle/gradle-6.7.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/usr/lib/jvm/java-8-oracle/bin:/usr/lib/jvm/java-8-oracle/db/bin:/usr/lib/jvm/java-8-oracle/jre/bin:/home/seamy/.rvm/bin:/home/seamy/.npm"

echo $INIT_CMD
if [ ! -z "$INIT_CMD" ]; then
    OLD_IFS=$IFS
    setopt shwordsplit
    IFS=';'
    for cmd in $INIT_CMD; do
        print -s "$cmd"  # add to history
        eval $cmd
    done
    unset INIT_CMD
    IFS=$OLD_IFS
fi
LD_LIBRARY_PATH=~/lib
export PKG_CONFIG_PATH=/home/seamy/share/pkgconfig
#export QT_AUTO_SCREEN_SCALE_FACTOR="1"
#export QT_SCALE_FACTOR="1.2"
#export QT_SCREEN_SCALE_FACTORS="eDP-1=2.0;HDMI-1=2.0;DP-0=2.0"
export QT_SCALE_FACTOR=1
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_SCREEN_SCALE_FACTORS=1
export DERBY_HOME=/opt/Apache/db-derby-10.14.2.0-bin
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
