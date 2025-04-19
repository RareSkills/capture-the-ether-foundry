// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

error WrongGuess();
error TransferFailed();

contract GuessTheSecretNumber {
    bytes32 answerHash = 0xdb81b4d58595fbbbb592d3661a34cdca14d7ab379441400cbfa1b78bc447c365;

    constructor() payable {
        require(msg.value == 1 ether);
    }

    function isComplete() public view returns (bool) {
        return address(this).balance == 0;
    }

    function guess(uint8 n) public payable returns (bool) {
        require(msg.value == 1 ether);

        // Check if the guess is correct
        if (keccak256(abi.encodePacked(n)) != answerHash) {
            revert WrongGuess();
        }

        // Try to send 2 ether back to the sender
        (bool ok,) = msg.sender.call{value: 2 ether}("");
        if (!ok) {
            revert TransferFailed();
        }

        return true;
    }
}

// Write your exploit codes below
contract ExploitContract {
    bytes32 answerHash = 0xdb81b4d58595fbbbb592d3661a34cdca14d7ab379441400cbfa1b78bc447c365;

    function Exploiter() public view returns (uint8) {
        uint8 n;
        return n;
    }
}
