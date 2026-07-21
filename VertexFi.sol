// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract VertexFi {

    uint256 public totalStaked;

    function stake() public {
        totalStaked += 1;
    }

    function unstake() public {
        require(totalStaked > 0, "Nothing staked");
        totalStaked -= 1;
    }

    function getTotalStaked() public view returns(uint256){
        return totalStaked;
    }
}
