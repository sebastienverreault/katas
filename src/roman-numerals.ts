import { output } from "./shared"

const ROMAN_I = "I"
const ROMAN_V = "V"
const ROMAN_DICT: { [key: string]: number } = {
  [ROMAN_I]: 1,
  [ROMAN_V]: 5
} as const

// Stopped at Green Phase refactor after 'IV'
export const numberFromRomanNumeral = () => {
  const romanNumber = process.argv[2]

  let result = 0
  for (let index = 0; index < romanNumber.length; index++) {
    result += ROMAN_DICT[romanNumber[index]]
  }
  if (romanNumber.includes("IV")) result -= 2

  output(result)
}
