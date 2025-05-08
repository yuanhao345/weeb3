// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20; 


import {HelloWorld} from"./test.sol";
//import {HelloWorld} from"https://github.com/smartcontractkit/Web3_tutorial_Chinese/blob/main/lesson-2/HelloWorld.sol";
//import {HelloWorld} from"@companyName/product/contract";

//3种引入合约方式   1、直接引入同一个系统文件中的合约    2、引入github上的合约  3、引入第三方合约

contract HelloWorldFactory{
    HelloWorld hw;
    function createHelloWorld() public{
        
    }
} 