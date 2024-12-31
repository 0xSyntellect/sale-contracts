// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract salesToken is ERC20 {
    constructor() ERC20("salesToken", "salesToken") {
        _mint(msg.sender, 100_000_000 ether);
    }

    function sendTokens(address _add, uint256 _amount) public {
        _mint(_add, _amount);
    }
}
