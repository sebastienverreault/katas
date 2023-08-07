main() {
  esbuild index.ts --bundle --log-level=warning --outdir=./.build --outbase=. --sourcemap=inline --target=node16 --platform=node --format=cjs

  node --enable-source-maps .build/index.js $1
}

yarn_main() {
  yarn run --silent execute $1
}
