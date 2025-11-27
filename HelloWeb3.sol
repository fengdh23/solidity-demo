// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

// contract HelloWeb3 {
//     string public _string = "Hello Web3";
// }

contract ValueTypes {
    bool public _bool = true;

    // 布尔运算
    bool public  _bool1 = !_bool ;

    int public  _int = -1;
    int public  _uint = 1;
    uint256 public _number = 20251127;


    // 地址 address
    address public  _address = 0x7A58c0Be72BE218B41C608b7Fe7C5bB630736C71;
    address payable public  _address1 = payable(_address); // payable 可以转账 查余额

    // 地址类型的成员
    uint256 public balance = _address1.balance;

    // 固定长度的字节数组
    bytes32 public _byte32 = "MiniSolidity"; 
    bytes1 public _byte = _byte32[0];

    // 用enum将uint 0， 1， 2表示为Buy, Hold, Sell 比较冷门的数据类型，几乎没什么人用
    enum ActionSet { Buy, Hold, Sell }
    // 创建enum变量 action

    ActionSet action = ActionSet.Buy;

    // enum可以和uint显式的转换
    function enumToUint() external view returns(uint){
        return uint(action);
    }

}