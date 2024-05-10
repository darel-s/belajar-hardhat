/// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract Trpl {
    string public textRaw;
    address private owner;
    uint256 public nilai;

    constructor() {
        owner = msg.sender;
    }

    function setText(string calldata _text) external {
        textRaw = _text;
    }

    function inc() external {
        require(msg.sender == owner, "NOT OWNER");

        nilai++;
    }

    function getPemilik() public view returns (address) {
        return owner;
    }
}
