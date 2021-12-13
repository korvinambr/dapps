//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

    contract SimpleWhitelist {

        mapping(address => bool) public whitelisted;
        address owner = msg.sender;

        function whitelist(address _user) external {
            require(msg.sender == owner);
            whitelisted[_user] = true;
        }   

        function getWhiteListed() public returns(address){
            return whitelisted;
        }

        function getOwner() public returns(address){
            return owner;
        }
    }