# shellcheck shell=bash
LIB_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
MODULES_DIR=$(dirname -- "$LIB_DIR")/modules

module_path() {
  echo "$MODULES_DIR/$1"
}
