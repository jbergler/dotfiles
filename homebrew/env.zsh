uname=$(uname)

if test "${uname}" = "Linux";
then
  test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
  test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

if test "${uname}" = "Darwin";
then
  eval $(/opt/homebrew/bin/brew shellenv)
fi

HOMEBREW_AUTO_UPDATE_SECS=172800 # 2 days
HOMEBREW_NO_ENV_HINTS=1
