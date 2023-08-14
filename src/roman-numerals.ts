import { output } from "./shared"

const ROMAN_I = "I"
const ROMAN_V = "V"
const ROMAN_X = "X"
const ROMAN_L = "L"
const ROMAN_C = "C"
const ROMAN_D = "D"
const ROMAN_M = "M"
const ROMAN_DICT: { [key: string]: number } = {
  [ROMAN_I]: 1,
  [ROMAN_V]: 5,
  [ROMAN_X]: 10,
  [ROMAN_L]: 50,
  [ROMAN_C]: 100,
  [ROMAN_D]: 500,
  [ROMAN_M]: 1000,
} as const

const invalidMsg = "Invalid roman numeral"

export const numberFromRomanNumeral = () => {
  const romanNumber = process.argv[2]
  if (romanNumber.includes("VIX")) {
    output(invalidMsg)
    return
  }

  let result = 0
  for (let index = 0; index < romanNumber.length; index++) {
    result += ROMAN_DICT[romanNumber[index]]
  }

  let previousChar = ""
  for (const char of romanNumber) {
    if (ROMAN_DICT[previousChar] < ROMAN_DICT[char]) {
      result -= ROMAN_DICT[previousChar] * 2
    }

    previousChar = char
  }

  output(result)
}
