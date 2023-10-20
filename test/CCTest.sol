// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {CreateCollection} from "../src/CreateCollection.sol";
import {DeployCreateCollection} from "../script/CCScript.sol";
import {Test} from "lib/forge-std/src/Test.sol";
import {console} from "lib/forge-std/src/console.sol";

contract TestCreateCollection is Test {

    CreateCollection createCollection;
    DeployCreateCollection deployCreateCollection;

    function setUp() public {
        deployCreateCollection = new DeployCreateCollection();
        createCollection = deployCreateCollection.run();
    }

    function test_constructor() public{
        string memory deployedName = deployCreateCollection.name();
        string memory deployedSymbol = deployCreateCollection.symbol();
        string memory deployedBaseUri = deployCreateCollection.baseUri();
        assertEq(bytes(createCollection.name()), bytes(deployedName));
        assertEq(bytes(createCollection.symbol()), bytes(deployedSymbol));
        assertEq(bytes(createCollection.baseUri()), bytes(deployedBaseUri));
    }
}