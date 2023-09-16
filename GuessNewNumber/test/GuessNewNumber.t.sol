// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/GuessNewNumber.sol";

contract GuessNewNumberTest is Test {
    GuessNewNumber public guessNewNumber;
    ExploitContract public exploitContract;

    function setUp() public {
        // Deploy contracts
        guessNewNumber = (new GuessNewNumber){value: 1 ether}();
        exploitContract = new ExploitContract();
    }

    function testNumber(uint256 blockNumber, uint256 blockTimestamp) public {
        // Prevent zero inputs
        vm.assume(blockNumber != 0);
        vm.assume(blockTimestamp != 0);
        // Set block number and timestamp
        vm.roll(blockNumber);
        vm.warp(blockTimestamp);

        // Place your solution here
        uint8 answer = exploitContract.Exploit();
        _checkSolved(answer);
    }

    function _checkSolved(uint8 _newNumber) internal {
        assertTrue(guessNewNumber.guess{value: 1 ether}(_newNumber), "Wrong Number");
        assertTrue(guessNewNumber.isComplete(), "Balance is supposed to be zero");
    }

    receive() external payable {}
}
