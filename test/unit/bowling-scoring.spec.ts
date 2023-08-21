import { readScore, writeScore } from "../../src/bowling-scoring"

describe("scores", () => {
  it('read and write score', () => {
    let score = readScore()
    console.log('HERE 0:', { score })
    expect(score).toBe("")

    writeScore("0")

    score = readScore()
    console.log('HERE 1:', { score })
    expect(score).toBe("0")
  })
})
