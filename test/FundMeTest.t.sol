//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol"; //Must Import test form forge-std and use this in contract
import {FundMe} from "../src/FundMe.sol";

contract FundMeTest is Test {
    FundMe fundMe;

    function setUp() external {
        fundMe = new FundMe();
    }

    function testMinimumDollarFive() public {
        console.log(fundMe.MIN_USD()); //Variables accessed by .var_name().
        assertEq(fundMe.MIN_USD(), 5e18);
    }
}
