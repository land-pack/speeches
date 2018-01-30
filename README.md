# speeches

    There are include all my speeches, because every moment is never be again~ so want to keep it on my github!
    so everything will sand as sand 


Build your soilidity project
========


Create your project structure by `truffle`.

    mkdir your-project-name
    cd your-project-name
    truffle init

Create your solidity file with your favorite editer!

    touch your-project-name/contracts/Simple.sol
    vim your-project-name/contracts/Simple.sol

To deploy your project on the block-chain, you have to create a deploy file inside the
your project as below way:
    
    touch your-project-name/migrations/2_deploy_contracts.js
    vim your-project-name/migrations/2_deploy_contracts.js

Typical, This file is the directive that allows us to deploy the Simple contract to the blockchain.

    var Simple = artifacts.require("Simple")
	module.exports = function(deployer){
	  deployer.deploy(Simple);
	}


Compile your solidity project with `truffle`.

    truffle compile


Run your rpc server, there several rpc server available here, (i.e `testrpc`, `truffle develop`).
I gotta demo it with `truffe develop`, open your second terminal, and then run the below commnad
inside your project!

    cd your-project-name
    truffle develop
    
    # should listen default port 9545

Migrate your project by two way! input `migrate` on your develop console, or just run  truffle with migrate
subcommand.

    #1 
    truffle migrate

    # or 2
    > migrate

Interacting with the basic smart contract
====

    
    # Get the value of your variable 
    Simple.deployed().then(function(instance){return instance.get.call();}).then(function(value){return value.toNumber()});

    # Set the value of your variable 
    Simple.deployed().then(function(instance){return instance.set(7);});   
