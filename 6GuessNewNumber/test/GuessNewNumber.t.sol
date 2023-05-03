// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/GuessNewNumber.sol";

contract GuessNewNumberTest is Test {
    GuessNewNumber public guessNewNumber;
    ExploitContract public exploitContract;

    function setUp() public {}

    function testNumber(uint256 blocnumber, uint256 bloctimestamp) public {
        vm.assume(blocnumber != 0);

        vm.roll(blocnumber);
        vm.warp(bloctimestamp);
        
        // set up
        guessNewNumber = (new GuessNewNumber){value: 1 ether}();
        exploitContract = new ExploitContract();

        // Do not modify the codes below
        guessNewNumber.guess{value: 1 ether}(exploitContract.Exploit());
        assertTrue(guessNewNumber.isComplete(), "Balance is supposed to be zero");
    }
    receive() external payable{}
}
