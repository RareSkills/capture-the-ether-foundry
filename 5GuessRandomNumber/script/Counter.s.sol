// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/GuessNewNumber.sol";

contract GuessNewNumberTest is Test {
    GuessNewNumber public guessNewNumber;
    ExploitContract public exploitContract;

    function setUp() public {}

    function testAnswer(uint256 blocnumber, uint256 bloctimestamp) public {
        vm.assume(blocnumber !=0);
        vm.assume(bloctimestamp !=0);
        //time frame
        vm.roll(blocnumber);
        vm.warp(bloctimestamp);

        //Set up
        guessNewNumber = (new GuessNewNumber){value: 1 ether}();
        exploitContract = new ExploitContract();

        // Your code below
        uint8 guess = exploitContract.Exploit();


        guessNewNumber.guess{value: 1 ether}(guess);

        // Do not modify the lines of code below

        assertTrue(guessNewNumber.isComplete(), "Wrong Number");
    }

    receive() external payable {}
}
