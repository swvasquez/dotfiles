# Quickly open config files.
alias bashrc="gedit $HOME/.bashrc &"
alias bash_profile="gedit $HOME/.bash_profile &"
alias bash_aliases="gedit $HOME/.bash_aliases &"

# Standard scala command's cursor is invisible:
# stackoverflow.com/questions/49788781 
alias scala="sbt console"
 
# Open the GHCi Haskell REPL
alias haskell=ghci

# Open Chrome
alias chrome="google-chrome"

# Open PDF readers
alias pdfe="evince"
alias pdfo="okular"

# Open markdown editor
alias marktext="./marktext-x86_64.AppImage"

# Open JupyterLab notebook
alias jup="nohup jupyter-lab --notebook-dir=$HOME >/dev/null 2>&1 &"

# Open neovim
alias vim="nvim"

# Set default Python to Python3
alias python="python3"
alias pip="pip3"

# For common directories:
alias home="cd ~"
alias config="cd ~/.config"
alias documents="cd ~/Documents"
alias dotfiles="cd ~/dotfiles"
alias projects="cd ~/Projects"
alias scratch="cd ~/scratch"
