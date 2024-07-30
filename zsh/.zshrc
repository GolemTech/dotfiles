# Use powerline
USE_POWERLINE="false"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
# if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#   source /usr/share/zsh/manjaro-zsh-prompt
# fi

# load requied modules
source ~/.aliases
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# styles


# manjaro
alias my_ip="nmcli device show | grep IP4.ADDRESS | head -1 | awk '{print $2}' | grep -oP '(\d+\.){3}\d+'"
# ubuntu
# alias my_ip="ip -4 -o addr show eth0 | awk '{print \$4}' | grep -oP '(\d+\.){3}\d+'"
alias ssh_tunel="ssh -N -L $(my_ip):5432:localhost:5432 -o ServerAliveInterval=60 "
alias flower_tunel="ssh -N -L $(my_ip):17559:localhost:17559 -o ServerAliveInterval=60 "

alias vim='nvim --listen /tmp/nvim-server.pipe'

alias run_tests="docker compose -f docker-compose.test.yml run --rm django pytest"
alias build_tests="docker compose -f docker-compose.test.yml build"
alias REPO_QUICK="gitlab:gitlab.com/quick-development/frontend/quick"
# Created by `pipx` on 2024-02-22 16:43:35
export PATH="$PATH:/home/nestor/.local/bin"
export PATH="$HOME/.moon/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export DENO_INSTALL="/home/nestor/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

if [[ $TERM_PROGRAM == "WarpTerminal" ]]; then
  SPACESHIP_PROMPT_ASYNC=FALSE
fi

eval "$(starship init zsh)"


