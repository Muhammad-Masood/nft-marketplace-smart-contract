// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {ERC1155} from "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract DropToken is ERC1155, Ownable {
    
    uint256 private s_totalSupply;
    
    /**
     * @param _uri https://token-cdn-domain/{id}.json
     * following substitution method according to the docs.
     */

    constructor(string memory _uri) ERC1155(_uri) Ownable(msg.sender) {}

    /**
     * @param _value the supply of the token to be minted 
     */

    function mint(uint256 _value) external {
        uint256 tokenID = totalSupply();
        _mint(msg.sender, tokenID, _value, "0x00");
        s_totalSupply+=1;
    }

    /**
     * @param _baseURI https://token-cdn-domain/
     */

    function setBaseURI(string memory _baseURI) external onlyOwner {
        string memory new_uri = string(abi.encodePacked(_baseURI,"{id}.json"));
        super._setURI(new_uri);
    }

    function totalSupply() public view returns (uint256) {
        return s_totalSupply;
    }

}
