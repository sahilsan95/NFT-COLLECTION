//SPDX-License-Identifier:MIT

pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {DeployBasicNft} from "../../script/DeployBasicNft.s.sol";
import {BasicNft} from "../../src/BasicNft.sol";

contract BasicNftTest is Test {
    DeployBasicNft public deployer;
    BasicNft public basicNft;
    address public USER = makeAddr("user");
    string public PUG = "ipfs://QmZQMjoV7367iU4auJn11AZUKXS5YA7xybyUV6CSfAMEMK";

    function setUp() public {
        deployer = new DeployBasicNft();
        basicNft = deployer.run(); // deploys the contract and returns the address/reference . the returned contract instance is stored in basicNft so your tests can interact with it .
    }

    function testNameIsCorrect() public view {
        string memory expectedName = "Dogie"; // string are array of bites [ strings are bascially dynamic arrays] , we cant compare two strings in solidity directtly , either loop through each using keccak256
        string memory actualName = basicNft.name(); // we cant use assertEqual because it is not supported for string
        assert(
            keccak256(abi.encodePacked(expectedName)) ==
                keccak256(abi.encodePacked(actualName))
        );
    }

    function testCanMintAndHaveABalance() public {
        vm.prank(USER);
        basicNft.mintNft(PUG);

        assert(basicNft.balanceOf(USER) == 1); // how may NFT the user owns
        assert(
            keccak256(abi.encodePacked(PUG)) ==
                keccak256(abi.encodePacked(basicNft.tokenURI(0)))
        );
    }
}
