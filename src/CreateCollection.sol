// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract CreateCollection is ERC721 {

    string private s_baseURI;

    constructor(string memory _name, string memory _symbol, string memory _baseUri) ERC721(_name, _symbol) {
        s_baseURI = _baseUri;
    }





    function baseUri() public view returns (string memory){
        return _baseURI();
    }

    function _baseURI() internal view override returns (string memory) {
        return s_baseURI;
    }

    


}
