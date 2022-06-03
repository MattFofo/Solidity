pragma solidity ^0.8.0;

import "./ZombieFactory.sol";

contract ZombieFeeding is ZombieFactory {
   function feedAndMultiply(uint _zombieId, uint _targetDna) public {
      require(zombieToOwner[_zombieId] == msg.sender);
      Zombie storage myZombie = zombies[_zombieId];
      _targetDna = _targetDna % dnaModulus;
      uint newDna = (_targetDna + myZombie.dna) / 2;
      _createZombie('FoFo', newDna);
   }

}