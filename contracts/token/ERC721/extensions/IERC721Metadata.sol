// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC721/extensions/IERC721Metadata.sol)

pragma solidity ^0.8.0;

import "../IERC721.sol";

/**
    就像我们之前所说的，使物品具有不可替代性的是它们独一无二的特质。美元和网球卡不可替代， 因为它们的特征不同。
    但是，在区块链上将这些区分每个通证的特征储存下来成本很高，也不推荐这么做。
    为了解决这个问题，我们可以储存每个通证的引用(references)，例如IPFS哈希或HTTP(S)链接，这些 引用，被称作元数据。
    元数据是可选的
 * @title ERC-721 Non-Fungible Token Standard, optional metadata extension
 * @dev See https://eips.ethereum.org/EIPS/eip-721
 */
interface IERC721Metadata is IERC721 {
    /**
     * 该函数应当返回通证的名称
     * @dev Returns the token collection name.
     */
    function name() external view returns (string memory);

    /**
        该函数应当返回通证的符号，它有助于提高与ERC20的兼容性
     * @dev Returns the token collection symbol.
     */
    function symbol() external view returns (string memory);

    /**
        例如IPFS哈希或HTTP(S)链接
     * @dev Returns the Uniform Resource Identifier (URI) for `tokenId` token.
     */
    function tokenURI(uint256 tokenId) external view returns (string memory);


    /**

    */
}
