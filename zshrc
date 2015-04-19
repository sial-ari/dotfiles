source ~/.dotfiles/antigen.zsh
source ~/.dotfiles/aliases

unsetopt menu_complete   # do not autoselect the first completion entry
unsetopt flowcontrol
setopt auto_menu         # show completion menu on succesive tab press
setopt complete_in_word
setopt always_to_end

# Make zsh know about hosts already accessed by SSH
h=()
if [[ -r ~/.ssh/config ]]; then
  h=($h ${${${(@M)${(f)"$(cat ~/.ssh/config)"}:#Host *}#Host }:#*[*?]*})
fi
if [[ -r ~/.ssh/known_hosts ]]; then
  h=($h ${${${(f)"$(cat ~/.ssh/known_hosts{,2} || true)"}%%\ *}%%,*}) 2>/dev/null
fi
if [[ $#h -gt 0 ]]; then
  zstyle ':completion:*:ssh:*' hosts $h
  zstyle ':completion:*:slogin:*' hosts $h
fi

zstyle ':completion:*' use-ip true


antigen use oh-my-zsh

antigen bundle robbyrussell/oh-my-zsh lib/
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle git
antigen bundle tmux
antigen bundle yum
antigen bundle pass
antigen bundle docker
antigen bundle vagrant
antigen bundle autojump
antigen bundle ssh-agent
antigen bundle archlinux
antigen bundle z 

#antigen theme maran

if [[ `hostname` =~ venabili* ]]; then
    source ~/.bin/robbyrussell.zsh-theme	
else
	antigen theme candy
fi

antigen apply

export PATH="$PATH:/opt/skype/:/usr/local/packer:/usr/local/sbin/:$HOME/.rbenv/bin:/home/sial/.bin/"
eval "$(rbenv init -)"
