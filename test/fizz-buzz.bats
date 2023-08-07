main() {
  esbuild index.ts --bundle --log-level=warning --outdir=./.build --outbase=. --sourcemap=inline --target=node16 --platform=node --format=cjs

  node --enable-source-maps .build/index.js $1
}

yarn_main() {
  yarn run --silent execute $1
}

@test "fizzbuzz: when n is 5" {
  run main 5
  [ "${lines[0]}" = "1" ]
  [ "${lines[1]}" = "2" ]
  [ "${lines[2]}" = "Fizz" ]
  [ "${lines[3]}" = "4" ]
  [ "${lines[4]}" = "Buzz" ]
}

@test "fizzbuzz: when n is 15" {
  run main 15
  [ "${lines[2]}" = "Fizz" ]
  [ "${lines[4]}" = "Buzz" ]
  [ "${lines[14]}" = "FizzBuzz" ]
}
