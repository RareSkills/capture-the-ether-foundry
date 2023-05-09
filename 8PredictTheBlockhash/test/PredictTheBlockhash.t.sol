// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/console.sol";

import "../src/PredictTheBlockHash.sol";

contract PredictTheBlockhashTest is Test {
    PredictTheBlockhash public predictTheBlockHash;
    ExploitContract public exploitContract;

    function setUp() public {
        predictTheBlockHash = (new PredictTheBlockhash){value: 1 ether}();
        exploitContract = new ExploitContract(predictTheBlockHash);
    }

    // Use vm.roll() and vm.warp() to change the block.number and block.timestamp respectively
    function testExploit() public {
        uint256 blocnumber = block.number;
        vm.roll(blocnumber - 256); // to roll forward, add the number of blocks to -256,
        // eg. roll forward 10 blocks: -256 + 10 = -246
        // write your codes below this line

        // Do not modify the codes below this line
        assertTrue(predictTheBlockHash.isComplete(), "Challenge Incomplete");
    }

    receive() external payable {}
}
