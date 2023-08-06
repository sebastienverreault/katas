
main() {
  esbuild index.ts --bundle --log-level=warning --outdir=./.build --outbase=. --sourcemap=inline --target=node16 --platform=node --format=cjs
  node --enable-source-maps .build/index.js $1
}

end=$1
for ((i=1; i<=end; i++)); do
  echo "FB: $i"
  main $i
done