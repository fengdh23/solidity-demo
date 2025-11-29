// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract MappingContract {
    mapping(uint => address) public idToAddress; // id 映射到地址
    mapping(address => address) public swapPair; // 比对的映射，地址到地址

    function writeMap(uint _Key, address _Value) public {
        idToAddress[_Key] = _Value;
    }
}