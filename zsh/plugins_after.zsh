# External plugins (initialized after)

# dircolors
if whence dircolors >/dev/null; then
  if [[ "$(tput colors)" == "256" ]]; then
      eval $(dircolors =(cat ~/.zsh/plugins/dircolors-solarized/dircolors.256dark ~/.zsh/dircolors.extra))
  fi
  zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
else
  export CLICOLOR=1
  zstyle ':completion:*:default' list-colors ''
fi
