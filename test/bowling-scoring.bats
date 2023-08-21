load "shared"

setup_file() {
  build
}

alias bow="run main"

bow() {
  run main "$@"
}

@test "bowling-scoring: trivial game" {
  bow new-game -n 1

  bow add-score -p 0 0

  bow show-score -p 0
  echo $output
  [ "${lines[0]}" = "0" ]
}

@test "bowling-scoring: " {
  bow new-game -n 1

  bow add-score -p 0 1

  bow show-score -p 0
  [ "${lines[0]}" = "1" ]
}
