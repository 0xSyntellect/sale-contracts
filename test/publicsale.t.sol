// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import "src/PublicSaleFCFS.sol";

contract Publictest is Test {
    PublicSaleFCFS public sale;

    address alice=makeAddr("alice");
    address bob=makeAddr("bob");
    address owner = address(0);
    
    IERC20 _salesToken=IERC20(address(0));
    uint256 _tokensToSell=100_000_000 ether;
    uint256 _maxDeposit= 1 ether;
    uint256 _refundThreshold=500 ether;
    address _burnAddress=owner;

    uint256 _startTime=block.timestamp;
    uint256 _endTime=block.timestamp+50;


    function setUp() public {

        sale = new PublicSaleFCFS(_salesToken,_tokensToSell,_maxDeposit,_refundThreshold,_burnAddress);
        
        
    }





}
