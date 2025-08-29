# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search kubectl)


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

export GITHUB_TOKEN="TODO"

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

source "/opt/homebrew/opt/kube-ps1/share/kube-ps1.sh"
PS1='$(kube_ps1)'$PS1

if [ -d "/opt/gradle/gradle-8.6/bin" ] ; then
    PATH="$PATH:/opt/gradle/gradle-8.6/bin"
fi


export PATH="$PATH:/opt/homebrew/bin/ssh"
export PATH="$PATH:/opt/homebrew/bin/ssh-keygen"

alias switch_1="export IBMCLOUD_API_KEY=TODO_API_KEY && ibmcloud login -c TODO_ACC_ID -r eu-de && ibmcloud ks cluster config --cluster TODO_CLUSTER"

alias switch_lh_staging="export IBMCLOUD_API_KEY=TODO_API_KEY && ibmcloud login -r us-south && ibmcloud ks cluster config --cluster TODO_CLUSTER"

alias 2_terraform="cd /Users/terraform && echo \"==> Configuring Terraform COS Remote Backend\" && terraform init -reconfigure -backend-config=\"access_key=TODO_ACC_KEY\" -backend-config=\"secret_key=TODO_SECRET_KEY\""

alias ssh_vsi_vpn_fra1="ssh -i /Users/id_rsa_ibmcloud root@10.243.1.7"

alias k="kubectl"
alias uuid="uuidgen"
alias kns="kubens"
alias kctx="kubectx"
alias ocp_vpn="openconnect 86.110.234.202 -u mferenc"
alias vm="ssh mferenc@192.168.60.10"
# SOPS
export KEY_FP=TODO_SOPS

export GITLAB_TOKEN=TODO_GITLAB_TOKEN

export MAGENTA_GITLAB_API_USER=TODO
export MAGENTA_GITLAB_API_PASSWORD=TODO
export NGN_CC_GITLAB_API_USERNAME=TODO
export NGN_CC_GITLAB_API_PASSWORD=TODO


alias keycloak_token='curl --location --request POST '\''https://TODO_URL/realms/TODO_REAL/protocol/openid-connect/token'\'' --header '\''Content-Type: application/x-www-form-urlencoded'\'' --data-urlencode '\''grant_type=password'\'' --data-urlencode '\''client_id=technical-user-login'\'' --data-urlencode '\''client_secret=TODO'\'' --data-urlencode '\''username=TODO'\'' --data-urlencode '\''password=TODO'\'' --data-urlencode '\''realm=todo'\'' --data-urlencode '\''scope=openid'\'
alias uuid="uuidgen"
alias vpn_iks_app="curl -v -Lk --max-time 20 http://10.243.0.10:30970"
alias gpt="pushd /Users/marianferenc/gpt4all/chat && ./gpt4all-lora-quantized-OSX-m1"

export KEYCLOAK_AUTH_SERVER_URL="TODO"
export KEYCLOAK_RESOURCE="TODO"
export KEYCLOAK_CREDENTIALS_SECRET="TODO"
export KEYCLOAK_REALM="TODO"
export NGNCC_GITLAB_PRIVATE_API_TOKEN='TODO'

export JIRA_PASSWORD="TODO"
export JIRA_USER="TODO"
export JIRA_HOST="v"
export CONFLUENCE_PASSWORD="TODO"
export CONFLUENCE_USER="TODO"
export CONFLUENCE_HOST="TODO"
export CI_SERVER_HOST="TODO"
export GITLAB_MICROSERVICE_GROUP_ID="TODO"
export GITLAB_TOKEN="TODO"
export DELIVERY_UMBRELLA_CHARTS_TRIGGER_TOKEN="TODO"


export DOCKER_DEFAULT_PLATFORM=linux/amd64
alias=llama='cd ~/IBM/llama3_local; conda activate genai-cve; streamlit run streamlit_app_v2.py'
alias sdxl='cd ~/ComfyUI; python main.py'
alias comfyui='sdxl'
alias excalidraw='cd /Users/marianferenc/excalidraw; yarn start'
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/mc mc
alias lll="ls -lptrah"

alias gll="clear; git log --graph --pretty=format:'%C(bold blue)%h%Creset -%C(red)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"

alias docker_images_platform='docker image inspect --format "{{.ID}} {{.RepoTags}} {{.Architecture}}" $(docker image ls -q)'
alias speed_test='t=$(date +"%s"); wget http://speedtest.tele2.net/100MB.zip -O ->/dev/null ; echo -n "MBit/s: "; expr 8 \* 100 / $(($(date +"%s")-$t))'
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/marianferenc/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/marianferenc/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/marianferenc/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/marianferenc/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
export JAVA_HOME="/opt/homebrew/opt/openjdk@23/"
export GRADLE_HOME="/opt/homebrew/Cellar/gradle/8.10.2/libexec"

export SLACK_FLUX_TOKEN="https://hooks.slack.com/services/TODO/TODO/TODO"
export DOCKER_HOST="unix:///Users/marianferenc/.rd/docker.sock"
alias lzd='lazydocker'
export PATH="$PATH:/Users/marianferenc/flutter-sdk/flutter/bin"
export PATH="$PATH:/Users/marianferenc/Library/Android/sdk/cmdline-tools/latest/bin"
export PATH="$PATH:/Users/marianferenc/.local/bin"
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/marianferenc/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/marianferenc/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/marianferenc/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/marianferenc/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export GOPATH="$HOME/go"
PATH="$GOPATH/bin:$PATH"

POWERLEVEL9K_KUBECONTEXT_SHOW_ON_COMMAND='kubectl|helm|kubens|kubectx'

alias delete_stucked_namespace="NAMESPACE=istio-system && kubectl proxy & kubectl get namespace $NAMESPACE -o json |jq '.spec = {"finalizers":[]}' >temp.json && curl -k -H "Content-Type: application/json" -X PUT --data-binary @temp.json 127.0.0.1:8001/api/v1/namespaces/$NAMESPACE/finalize"
export PATH=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-22.3.0/Contents/Home/bin:$PATH

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export WASMTIME_HOME="$HOME/.wasmtime"

export PATH="$WASMTIME_HOME/bin:$PATH"


# Load Angular CLI autocompletion.
#source <(ng completion script)

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/marianferenc/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
export PATH="/opt/homebrew/opt/libressl/bin:$PATH"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
eval
TWILIO_AC_ZSH_SETUP_PATH=/Users/marianferenc/.twilio-cli/autocomplete/zsh_setup && test -f $TWILIO_AC_ZSH_SETUP_PATH && source $TWILIO_AC_ZSH_SETUP_PATH; # twilio autocomplete setup

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/opt/php@7.1/bin:$PATH"
export PATH="/opt/homebrew/opt/php@7.2/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql-client@8.4/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/marianferenc/.cache/lm-studio/bin"

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
