
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract InsertionSortContract{
    
    // returns 指明有返回值
    function insertionSort(uint[] memory a ) public pure returns(uint[] memory){

    for (uint i = 1;i < a.length;i++){
        uint temp = a[i];
        uint j = i;
        while ( (j>=1) && (temp < a[j-1])){
            a[j]= a[j-1];
            j--;
        }
        a[j]=temp;

    }
    return (a);
}
}


