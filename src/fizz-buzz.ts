// A typical round of Fizz Buzz can be:
// Write a program that prints the numbers from 1 to 100 and for multiples of ‘3’ print “Fizz” instead of the number and for the multiples of ‘5’ print “Buzz”.

// 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14,
// Fizz Buzz, 16, 17, Fizz, 19, Buzz, Fizz, 22, 23, Fizz, Buzz, 26,
// Fizz, 28, 29, Fizz Buzz, 31, 32, Fizz, 34, Buzz, Fizz, ...

// Loop 1
export const fizzBuzz = () => {
  const number = Number(process.argv[2])
  const output = console.log
  for (let i = 1; i <= number; i++) {
    if (i % 3 == 0 && i % 5 == 0) output("FizzBuzz")
    else if (i % 3 === 0) output("Fizz")
    else if (i % 5 == 0) output("Buzz")
    else output(i)
  }
}
