load "shared"

@test "roman-numerals: I" {
  run main I
  [ "${lines[0]}" = "1" ]
}

@test "roman-numerals: II" {
  run main II
  [ "${lines[0]}" = "2" ]
}

@test "roman-numerals: III" {
  run main III
  [ "${lines[0]}" = "3" ]
}

@test "roman-numerals: IV" {
  run main IV
  [ "${lines[0]}" = "4" ]
}

@test "roman-numerals: V" {
  run main V
  [ "${lines[0]}" = "5" ]
}
