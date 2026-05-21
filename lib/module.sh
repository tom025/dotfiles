# shellcheck shell=bash
create_links() {
  local module="$1"
  shift
  local links=("$@")

  for link in "${links[@]}"; do
    IFS=':' read -r -a split <<<"$link"
    src=${split[0]}
    dst=${split[1]}
    if ! [[ -f "$src" || -d "$src" ]]; then
      echo "$src: does not exist"
      return
    fi
    echo "modules/$module: Linking $src -> $dst"
    ln -sf "$src" "$dst"
  done
}
