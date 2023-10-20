//SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {IERC721} from "@openzeppelin/contracts/interfaces/IERC721.sol";
import {IERC721Metadata} from "@openzeppelin/contracts/interfaces/IERC721Metadata.sol";
import {ERC1155} from "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import {IERC165, ERC165} from "@openzeppelin/contracts/utils/introspection/ERC165.sol";

contract Marketplace {
    constructor() {}

    function createUniqueItem() public {
        
    }

    function buyItem() public {}

    function getMarketItems() public {}
}
