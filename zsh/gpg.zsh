if [ -e ~/Dropbox/Keys/gpg ]; then
  export GNUPGHOME=~/Dropbox/Keys/gpg
fi

function gpg-update-key() {
  if [ -z "$1" ]; then
    echo "usage: $0 <username>"
    return 1
  fi
  gpg --with-colons --fast-list-mode --list-sigs $1 | awk -F ':' '$1 ~ /sig|rev/ {print $5}' | sort -u | xargs gpg --recv-keys
}
