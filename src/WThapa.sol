//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
contract WThapa is ERC20, Ownable{
    constructor()ERC20("Wrapped Thapa","WTHP")Ownable(msg.sender){

    }
    function mint(address to, uint256 amount)public isOwner{
        _mint(to,amount);
    }
    function burn(address from, uint256 amount)public isOwner{
        _burn(from,amount);
    }
}