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
    function testExploit() public{
        vm.roll(104293); // Do not modify this code
        vm.warp(93582192); // Do not modify this code
        
        // write your codes below this line

        // Do not modify the codes below this line
        assertTrue(predictTheBlockHash.isComplete(), "Challenge Incomplete");
    }
    
    
    receive() external payable {}
}
