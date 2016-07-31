## TODO
#
# 1. Tmux auto session
#

source ~/.antigen.zsh
source ~/.aliases

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
antigen bundle pass
antigen bundle docker
antigen bundle vagrant
antigen bundle autojump
#antigen bundle ssh-agent #will use ssh-ident for the job
antigen bundle systemd
antigen bundle z 
antigen bundle nojhan/liquidprompt


#antigen theme candy

antigen apply

export PATH="/home/sial/.bin:/opt/packer:$PATH:/opt/skype/:/usr/local/sbin/:/usr/local/sbin/:$HOME/.rbenv/bin:$HOME/projects/go/bin/"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(rbenv init -)"
eval "$(pyenv init -)"
if which passpie > /dev/null; then eval "$(passpie complete zsh)"; fi
command -v dtags > /dev/null 2>&1 && . <(dtags shell zsh)
source ~/perl5/perlbrew/etc/bashrc
source ~/.nix-profile/etc/profile.d/nix.sh
