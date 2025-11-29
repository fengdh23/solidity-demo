// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;
import  {HelloWord } from "./Hello.sol";

// 一个文件可以多个合约
contract HelloFactory{
    HelloWord hw;

    HelloWord[] hws;
    function createHello() public {
        hw = new HelloWord();
        hws.push(hw);
    }

    function getHelloByIndex(uint256 _index) public view returns(HelloWord){
        return hws[_index];
    }


    function callSayHelloFromFactory(uint256 _index,uint256 _id) public  view returns (string memory){
        return hws[_index].sayHello(_id);
    }
}