// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/GuessRandomNumber.sol";

contract GuessRandomNumberTest is Test {
    GuessRandomNumber public guessRandomNumber;
    ExploitContract public exploitContract;

    function setUp() public {}

    function testAnswer(uint256 blocnumber, uint256 bloctimestamp) public {
        vm.assume(blocnumber !=0);
        vm.assume(bloctimestamp !=0);
        //time frame
        vm.roll(blocnumber);
        vm.warp(bloctimestamp);

        //Set up
        guessRandomNumber = (new GuessRandomNumber){value: 1 ether}();
        exploitContract = new ExploitContract();

        // Your code below
        uint8 guess = exploitContract.Exploit();


        guessRandomNumber.guess{value: 1 ether}(guess);

        // Do not modify the lines of code below

        assertTrue(guessRandomNumber.isComplete(), "Wrong Number");
    }

    receive() external payable {}
}
