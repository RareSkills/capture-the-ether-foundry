// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/console.sol";

import "../src/PredictTheBlockHash.sol";

contract PredictTheBlockhashTest is Test {
    PredictTheBlockHash public predictTheBlockHash;
    ExploitContract public exploitContract;

    function setUp() public {
        // Deploy contracts
        predictTheBlockHash = (new PredictTheBlockHash){value: 1 ether}();
        exploitContract = new ExploitContract(predictTheBlockHash);
    }

    function testExploit() public {
        // Set block number
        uint256 blockNumber = block.number;
        // To roll forward, add the number of blocks to -256,
        // Eg. roll forward 10 blocks: -256 + 10 = -246
        vm.roll(blockNumber - 256);

        // Put your solution here

        _checkSolved();
    }

    function _checkSolved() internal {
        assertTrue(predictTheBlockHash.isComplete(), "Challenge Incomplete");
    }

    receive() external payable {}
}
