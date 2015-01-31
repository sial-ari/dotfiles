source ~/.dotfiles/antigen.zsh

antigen use oh-my-zsh
antigen bundle robbyrussell/oh-my-zsh lib/

antigen bundle zsh-users/zsh-syntax-highlighting

antigen bundle git
antigen bundle tmux
antigen bundle yum
antigen bundle pass
antigen bundle docker
antigen bundle autojump
antigen bundle ssh-agent

antigen theme maran
export PATH="/opt/skype/:/usr/local/packer:$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
