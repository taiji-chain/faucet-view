#!/bin/bash
echo "Build the view"
yarn build
echo "Build completed in build folder, start copying to local server"
# local
rm -rf ~/light-chain/light-docker/local/taiji-faucet/build
cp -r ./build ~/light-chain/light-docker/local/taiji-faucet
# test
ssh test3 "rm -rf ~/light-chain/light-docker/test3/taiji-faucet/build"
scp -r ./build test3:/home/steve/light-chain/light-docker/test3/taiji-faucet
# prod

echo "Copied!"
