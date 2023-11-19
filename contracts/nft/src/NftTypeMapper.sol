// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {NftType} from "./NftType.sol";

contract NftTypeMapper {
    mapping(NftType => string) internal nftTypeToString;

    constructor() {
        nftTypeToString[NftType.SWORDMAN] = "swordman";
        nftTypeToString[NftType.MAGE] = "mage";
        nftTypeToString[NftType.ARCHER] = "archer";
        nftTypeToString[NftType.MERCHANT] = "merchant";
        nftTypeToString[NftType.THIEF] = "thief";
        nftTypeToString[NftType.ACOLYTE] = "acolyte";
    }

    function getNftTypeString(
        NftType nftType
    ) external view returns (string memory) {
        return nftTypeToString[nftType];
    }
}
