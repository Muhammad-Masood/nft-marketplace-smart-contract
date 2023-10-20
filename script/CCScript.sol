// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {CreateCollection} from "../src/CreateCollection.sol";
import {Script} from "lib/forge-std/src/Script.sol";
import {console} from "lib/forge-std/src/console.sol";

contract DeployCreateCollection is Script {
    
    string public name = "The Punks";
    string public symbol = "TP";
    string public baseUri = "bafybeiaxf5w2qavylbx3y6w5gtrs3taa2d2blcvxca6oru5dwtkwjlgypy";

    function run() external returns(CreateCollection){
        vm.startBroadcast();
        CreateCollection createCollection = new CreateCollection(name, symbol, baseUri);
        vm.stopBroadcast();
        console.log("contract CreateCollection deployed: ", address(createCollection));
        return createCollection;
    }
}
