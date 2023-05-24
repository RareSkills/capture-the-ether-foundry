# Capture The Ether Foundry (A [RareSkills](http://www.rareskills.io/) fork)
This project provides a foundry environment to practice the problems on [capturetheether.com/](https://capturetheether.com/). The problems run on a defunct testnet and use an older version of Solidity. This repository doesn't depend on testnets and uses the latest Solidity version. Some problems could not be ported because they rely on vulnerabilities that only existed in older versions of Solidity. Some liberty has been taken where the syntax and other compiler features are no longer compatible.

## How to play
Make sure foundry is installed. [instructions](https://book.getfoundry.sh/getting-started/installation)

cd to the directory of the problem, then add your solution in the test where the comment says `// Put your solution here`. We've also set up attacking contracts for you. If the tests pass, you were successful. Run the tests with `forge test` (exception for problem 8 below).

### 8PredictBlockhash:

run it with "forge test --fork-url https://1rpc.io/eth -vvvv"

## Want more problems?
Check out our [solidity riddles](https://github.com/rareSkills/solidity-riddles). It includes 20 CTFs and counting!
