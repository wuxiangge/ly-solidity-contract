pragma solidity ^0.8.0;

import "../extensions/ERC721URIStorage.sol";
import "../presets/ERC721PresetMinterPauserAutoId.sol";

contract ERC721PresetMinterPauserAutoIdURIStorageMintable is ERC721PresetMinterPauserAutoId, ERC721URIStorage {

    /**
     * @dev Function to mint tokens.
     * @param to The address that will receive the minted tokens.
     * @param tokenURI The token URI of the minted token.
     * @return A boolean that indicates if the operation was successful.
     */
    function mintWithTokenURI(address to, string memory tokenURI) public returns (bool) {
        uint256 tokenId = super.mint(to);
        _setTokenURI(tokenId, tokenURI);
        return true;
    }


    /**
     * @dev Function to mint tokens.
     * @param to The address that will receive the minted tokens.
     * @param tokenURI The token URI of the minted token.
     * @return A boolean that indicates if the operation was successful.
     */
    function mintWithTokenURI(address to, uint256 quantity, string memory tokenURI) public returns (bool) {
        for (uint p = 0; p < proposals.length; p++) {
            uint256 tokenId = super.mint(to);
            _setTokenURI(tokenId, tokenURI);
        }
        return true;
    }


    constructor(string memory name, string memory symbol)  ERC721PresetMinterPauserAutoId(name, symbol) public {
    }

}
