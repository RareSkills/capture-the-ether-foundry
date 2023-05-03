// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Mappings {
    bool public isComplete;
    uint256[] map;

    function set(uint256 key, uint256 value) public {
        // Expand dynamic array as needed
        if (map.length <= key) {
            // map.length = key + 1;
            unchecked {
                map.push();
            }
        }

        map[key] = value;
    }

    function get(uint256 key) public view returns (uint256) {
        return map[key];
    }
}

// Write your exploit codes below
contract ExploitContract {
    Mappings public mappings;

    constructor(Mappings _mappings) {
        mappings = _mappings;
    }

}
