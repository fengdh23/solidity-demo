// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract OwnerContract {
    address public owner;

    constructor(address initialOwner) {
        owner =  initialOwner; // 在合约部署的时候，将owner 设置传入的 initialOwner 地址
    }

    // 定义 modifier
    modifier onlyOwner() {
        require(msg.sender == owner);
        _; //
    }
    function changeOwner(address _newOwner) external onlyOwner {
        owner = _newOwner; //
    }
}
