// SPDX-License-Identifier: AGPL-3.0-only

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BPay is ERC20 {
  uint256 public maxSupply;
  address private owner;

  constructor(uint256 _maxSupply) ERC20("BPay", "BPAY") {
    maxSupply = _maxSupply;
  }

  modifier onlyOwner() {
    require(msg.sender == owner, "Only owner can call this function.");
    _;
  }

  function mint(address _to, uint256 _amount) public onlyOwner {
    require(totalSupply() + _amount <= maxSupply, "Cannot mint more than maxSupply.");
    _mint(_to, _amount);
  }
}
