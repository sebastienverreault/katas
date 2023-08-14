load "shared"

setup_file() {
  build
}

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

@test "roman-numerals: VI-VIII" {
  run main VI
  [ "${lines[0]}" = "6" ]

  run main VII
  [ "${lines[0]}" = "7" ]

  run main VIII
  [ "${lines[0]}" = "8" ]
}

@test "roman-numerals: IX" {
  run main IX
  [ "${lines[0]}" = "9" ]
}

@test "roman-numerals: X" {
  run main X
  [ "${lines[0]}" = "10" ]
}

@test "roman-numerals: XXXIX" {
  run main XXXIX
  [ "${lines[0]}" = "39" ]
}

@test "roman-numerals: XL" {
  run main XL
  [ "${lines[0]}" = "40" ]
}

@test "roman-numerals: LXXXIX" {
  run main LXXXIX
  [ "${lines[0]}" = "89" ]
}

@test "roman-numerals: XC" {
  run main XC
  [ "${lines[0]}" = "90" ]
}

@test "roman-numerals: CD" {
  run main CD
  [ "${lines[0]}" = "400" ]
}

@test "roman-numerals: CM" {
  run main CM
  [ "${lines[0]}" = "900" ]
}

# Question: do invalid cases count for red/green development?
@test "roman-numerals: VIX" {
  run main VIX
  [ "${lines[0]}" = "Invalid roman numeral" ]

run main XVIX
  [ "${lines[0]}" = "Invalid roman numeral" ]
}
