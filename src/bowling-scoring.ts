import { output } from "./shared"
import { writeFileSync, readFileSync } from "fs"

// PROGRESS: We are at inner loop step now
export const bowlingScore = () => {
  // output(process.argv)
  console.log(process.argv[2])
  switch (process.argv[2]) {
    case "new-game":
      break
    case "add-score":
      // get score arg
      const scoreToWrite = process.argv[5]
      writeScore(scoreToWrite)
      // write score arg
      break
    case "show-score":
      const score = readScore()
      output(score)
      break
    // output score arg
    default:
      output("not handled")
  }
}

export const writeScore = (score: string) => writeFileSync("./.data/score", score)

export const readScore = () => readFileSync("./.data/score")

// export const newGame = () => {

// }

// export const addScore = () => {

// }

// export const showScore = () => {

// }
