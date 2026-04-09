# oh-my-zsh bootstrap
export ZSH="$HOME/.oh-my-zsh"
if [[ ! -d "$ZSH" ]]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

ZSH_THEME="robbyrussell"

# external plugins bootstrap
ZSH_CUSTOM="${ZSH_CUSTOM:-$ZSH/custom}"

[[ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]] && \
    git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"

[[ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]] && \
    git clone https://github.com/zsh-users/zsh-syntax-highlighting "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"

[[ ! -d "$ZSH_CUSTOM/plugins/fzf-tab" ]] && \
    git clone https://github.com/Aloxaf/fzf-tab "$ZSH_CUSTOM/plugins/fzf-tab"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting fzf-tab)

source "$ZSH/oh-my-zsh.sh"

# z
eval "$(zoxide init zsh --cmd z)"
