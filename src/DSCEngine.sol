// SPDX-License-Identifier: MIT

// This is considered an Exogenous, Decentralized, Anchored (pegged), Crypto Collateralized low volitility coin

// Layout of Contract:
// version
// imports
// interfaces, libraries, contracts
// errors
// Type declarations
// State variables
// Events
// Modifiers
// Functions

// Layout of Functions:
// constructor
// receive function (if exists)
// fallback function (if exists)
// external
// public
// internal
// private
// view & pure functions

pragma solidity ^0.8.19;

/// @title DSC Engine
/// @author Meet Jain
/// @notice This contract is the core of the DSC System. It handles all the logic for minting and reedeming DSC, as well as depositing & withdrawing collateral.
/// @dev This contract is very loosely based on the MakerDAO DSS (DAI) system. 

contract DSCEngine {

    //////////////
    // ERROR /////
    //////////////
    error DSCEngine__NeedsMoreThanZero();

    ////////////////
    // MODIFIERS //
    //////////////

    modifier moreThanZero(uint256 amount) {
        if (amount == 0) {
            revert DSCEngine__NeedsMoreThanZero();
        }
        _;
    }


    function depositCollateralAndMintDsc() external {}

    /*
    * @param tokenCollateralAddress The address of the token to deposit as collateral
    * @param amountCollateral The amount of collateral to deposit 
    */


    function depositCollateral(address tokenCollateralAddress, uint256 amountCollateral) external moreThanZero (amountCollateral){} 

    function redeemCollateralForDsc() external {}

    function mintDsc() external {}

    function burnDsc() external {}

    function liquidate() external {}

    function getHealthFactor() external view {}
}