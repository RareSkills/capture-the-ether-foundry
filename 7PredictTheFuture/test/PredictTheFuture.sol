// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/PredictTheFuture.sol";

contract PredictTheFutureTest is Test {
    PredictTheFuture public predictTheFuture;
    ExploitContract public exploitContract;

    function setUp() public {
        predictTheFuture = (new PredictTheFuture){value: 1 ether}();
        exploitContract = new ExploitContract();
    }

    // Use vm.roll() and vm.warp() to change the block.number and block.timestamp respectively
    function testGuess() public {
        vm.roll(104293); // Do not change this code
        vm.warp(93582192); // Do not change this code
        
        // write your codes below below this line

        // Do not modify the codes below this line
        assertTrue(predictTheFuture.isComplete(), "Challenge Incomplete");
    }

    receive() external payable {}
}
