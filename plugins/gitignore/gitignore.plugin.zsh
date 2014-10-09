function gi() { curl -L https://www.gitignore.io/api/$@ ;}

_gitignoreio_get_command_list() {
  curl -s https://www.gitignore.io/api/list | tr "," "\n"
}

_gitignoreio () {
  compset -P '*,'
  compadd -S '' `_gitignoreio_get_command_list`
}

compdef _gitignoreio gi
