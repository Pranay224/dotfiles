# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/pranay/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME='typewritten/typewritten'
#ZSH_THEME='powerlevel10k/powerlevel10k'
#ZSH_THEME='agnoster'
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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
	dnf
)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export EDITOR='vim'
export PLASMA_USE_QT_SCALING=1

#alias shutdown='shutdown now'
alias @='history'
alias g='grep'
alias blackoutCamera='v4l2-ctl -d /dev/video0 --set-ctrl=backlight_compensation=0;v4l2-ctl -d /dev/video0 --set-ctrl=brightness=-64'
alias restoreCamera='v4l2-ctl -d /dev/video0 --set-ctrl=backlight_compensation=3; v4l2-ctl -d /dev/video0 --set-ctrl=brightness=20'
alias printColormap='for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done'
alias monitorSensors='watch -t -p -n 1 -d sensors'
alias invertScreen='xrandr -o inverted'
alias restoreScreen='xrandr -o normal'
alias turnScreenLeft='xrandr -o left'
alias turnScreenRight='xrandr -o right'
alias getFileFromADB='adb pull /sdcard/DCIM/Camera/Camera.zip /home/pranay'
alias EXIT='exit'
alias decompress='f() {atool -x $1};f'
alias firefox='firefox-developer-edition'
alias FTL='cd ~/.steam/steam/steamapps/common/FTL\ Faster\ Than\ Light/; ./FTL; cd ~'
alias Exit='exit'
alias ftl='FTL'
alias ftlmodder='./.steam/steam/steamapps/common/FTL\ Faster\ Than\ Light/Slipstream/modman.command'
alias FTLModder='ftlmodder'
alias factorio='cd ~/factorio/bin/x64/; ./factorio; cd ~'
alias i3config='vim ~/.config/i3/config'
if [ -e /home/pranay/.nix-profile/etc/profile.d/nix.sh ]; then . /home/pranay/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
set RANGER_LOAD_DEFAULT_RC=FALSE
alias ktane='cd ~/ktane/; wine ktane.exe; cd ~'
PATH=$(echo $PATH:/home/pranay/.local/bin)
alias switchToJava8='sudo archlinux-java set java-8-openjdk'
alias switchToJava14='sudo archlinux-java set java-14-openjdk'
alias esp32repl='dterm 115200 8 n 1 /dev/ttyUSB0'
alias qtileconfig='vim ~/.config/qtile/config.py'
export OPENCV_LOG_LEVEL=ERROR
alias su='sudo -i'
