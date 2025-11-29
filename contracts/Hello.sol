// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract HelloWord{
    string strVar = "Hello World";

    struct Info{
        string phrase;
        uint256 id;
        address addr; // 谁创建
    }

    Info[] infos;
    mapping(uint256 id => Info info) infoMapping;



    function sayHello(uint256 _id) public  view returns (string memory){
        if(infoMapping[_id].addr == address(0x0)){
        return infoMapping[_id].phrase;
        }else {
            return addinfo(strVar);
        } 

        // for (uint256 i = 0; i< infos.length; i++) 
        // {
        //     if(infos[i].id == _id){
        //         addinfo(infos[i].phrase);
        //     }
        // }
        //  return addinfo(strVar);
    }

    // 基础类型 int 会自动加入 memory
    function setHello(string memory newString, uint256 _id) public {
        strVar = newString;
        Info memory info = Info(newString,_id,msg.sender); // 环境变量 msg 当前合约对象信息
        infoMapping[_id] = info;
        infos.push(info);
    }

    function addinfo(string memory helloStr) internal pure returns (string memory){
        return string.concat(helloStr," from Hai's contract.");
    }


}
