# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="ys"

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
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
plugins=(aws git)

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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# personalized

# auto complete hidden files
_comp_options+=(globdots)

setopt noautomenu
setopt nonomatch
setopt HIST_IGNORE_SPACE
[[ -r /etc/zsh_command_not_found ]] && . /etc/zsh_command_not_found
alias mv='mv -i'
alias cp='cp -i'
alias dus='du -sch .* * | sort -h'
alias purgeall='dpkg --list |grep "^rc" | cut -d " " -f 3 | xargs sudo dpkg --purge'
# docker rmi $(docker images | grep stuff_ | tr -s ' ' | cut -d ' ' -f 3)

alias dquilt="quilt --quiltrc=${HOME}/.quiltrc-dpkg"

export DEBFULLNAME="Chen-Han Hsiao (Stanley)"

if [ "$(uname)" == "Linux" ]; then
    eval `keychain --eval --quiet --agents ssh id_rsa`
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
elif [ "$(uname)" == "Darwin" ]; then
    alias ls='ls --color'
    eval `keychain --eval --quiet --agents ssh --inherit any id_rsa`
    # for brew coreutils
    # Commands also provided by macOS have been installed with the prefix "g".
    # If you need to use these commands with their normal names, you
    # can add a "gnubin" directory to your PATH from your bashrc like:
    PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
    # xquartz
    export DISPLAY=:0
    # Add Visual Studio Code (code)
    export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
    # Mac OS X: ValueError: unknown locale: UTF-8 in Python
    # https://github.com/pypa/pipenv/issues/187
    export LC_ALL=en_US.UTF-8
    export LANG=en_US.UTF-8
    # To link Rubies to Homebrew's OpenSSL 1.1 (which is upgraded) add the following
    # to your ~/.zshrc:
    # Note: this may interfere with building old versions of Ruby (e.g <2.4) that use
    # OpenSSL <1.1.
    export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
    # path for homebrew mysql
    export PATH="/usr/local/opt/mysql-client@5.7/bin:$PATH"
    # export LDFLAGS="-L/usr/local/opt/mysql-client@5.7/lib":$LDFLAGS
    # export CPPFLAGS="-I/usr/local/opt/mysql-client@5.7/include":$CPPFLAGS
    # export LDFLAGS="-L/usr/local/opt/mysql@5.7/lib"
    # export CPPFLAGS="-I/usr/local/opt/mysql@5.7/include"
    # export PKG_CONFIG_PATH="/usr/local/opt/mysql@5.7/lib/pkgconfig"

    # disable multithreading restriction in mac os
    export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
fi

kjupyter() {
  docker run -v $PWD:/tmp/working -w=/tmp/working -p 8888:8888 --rm -it kaggle/python jupyter notebook --no-browser --ip="0.0.0.0" --allow-root --notebook-dir=/tmp/working
}

# auto completion from homebrew
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

# [[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

# pyenv-virtualenv
if command -v pyenv
then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

# eval "$(nodenv init -)"
export PATH=$HOME/.nodenv/bin:$HOME/.nodenv/shims:$PATH

export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH=$PATH:/snap/bin

