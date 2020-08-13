add_install_asdf_plugin() {
  local plugin="$1"
  local repo=${2:-}
  if ! asdf plugin list | grep $plugin; then
    echo "-----> Adding asdf $plugin"
    asdf plugin add $plugin $repo
  else
    echo "-----> Updating asdf plugin $plugin"
    asdf plugin update $plugin
  fi
}

add_install_asdf_plugin "dhall"
add_install_asdf_plugin "purescript-zephyr" "https://github.com/instateam/asdf-purescript-zephyr.git"
