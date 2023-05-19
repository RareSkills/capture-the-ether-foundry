// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract GuessRandomNumber {
    uint8 answer;

    constructor() payable {
        require(msg.value == 1 ether);
        answer = uint8(
            uint256(
                keccak256(
                    abi.encodePacked(
                        blockhash(block.number - 1),
                        block.timestamp
                    )
                )
            )
        );
    }

    function isComplete() public view returns (bool) {
        return address(this).balance == 0;
    }

    function guess(uint8 n) public payable {
        require(msg.value == 1 ether);

        if (n == answer) {
            (bool ok, ) = msg.sender.call{value: 2 ether}("");
            require(ok, "Fail to send to msg.sender");
        }
    }
}

//Write your exploit codes below
contract ExploitContract {
    GuessRandomNumber public guessRandomNumber;
    uint8 public answer;

    function Exploit() public returns (uint8) {
        
        return answer;
    }
}
