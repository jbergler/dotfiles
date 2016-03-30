function update-env-from-tmux() {
  tmux_environment=$(tmux show-environment)
  for var in ${(f)tmux_environment}; do
    if [[ ${var:0:1} == "-" ]]; then
      unset -v ${var:1}
    else
      export $var
    fi
  done
}

