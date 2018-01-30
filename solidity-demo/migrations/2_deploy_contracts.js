var Simple = artifacts.require("Simple")

// This file is the directive that allows us to
// deploy the Simple contract to the blockchain.

module.exports = function(deployer){
  deployer.deploy(Simple);
}
