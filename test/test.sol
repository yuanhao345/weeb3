// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
// comment: this is my first smart contract
contract  HelloWorld {
     bool boolVar_1 = true;
     bool boolVar_2 = false ;

     uint8 uint8Var = 255;

     int8 int8Var  = -90;

     bytes32  bytesBar  ="hello,World";
     string strVar = "Hello,World"; 

     address addressVar = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

     struct Info{
        uint256 id;
        string phrase;
        address addr;
     }

     Info[] infos;

     mapping (uint256 => Info) infoMapping;

    function sayHello(uint256 _id) public view  returns (string memory){
        // for(uint256 i =0;i<infos.length;i++){
        //     if(infos[i].id == _id){
        //         return  additon(infos[i].phrase);
        //     }
        // }
        //     return additon(strVar);

        if(infoMapping[_id].addr == address(0x0) ){
            return additon(strVar);
        }else{
            return additon(infoMapping[_id].phrase);
        }
    }    

    function setHelloWorld(string memory newString,uint256 _id) public {
        Info memory info =Info(_id,newString,msg.sender);
        infoMapping[_id] = info;
       // infos.push(info);
    }

    function additon(string memory newStr) internal pure  returns (string memory){
        return string.concat(newStr," from frank's contract");
    }

}