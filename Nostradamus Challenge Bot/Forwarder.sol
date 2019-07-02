pragma solidity 0.5.0;

contract Forwarder {
    function forwardToProphecise(address propheciseAddress, string memory bragging) public returns (bool success) {
        NostradamusRemedcu shebin = NostradamusRemedcu(propheciseAddress);
        uint blockNumber = block.number;
        bytes32 blockHash = blockhash(blockNumber);
        bytes32 braggingRights = stringToBytes32(bragging);
        bytes32 exact = keccak256(abi.encodePacked(this, blockNumber, blockHash, block.timestamp, propheciseAddress));
        shebin.prophecise(exact, braggingRights);
        return true;
    }
    
    //https://ethereum.stackexchange.com/a/9152
    function stringToBytes32(string memory source) pure internal returns (bytes32 result) {
        bytes memory tempEmptyStringTest = bytes(source);
        if (tempEmptyStringTest.length == 0) {
            return 0x0;
        }

        assembly {
            result := mload(add(source, 32))
        }
    }
}

contract NostradamusRemedcu {
    function prophecise(bytes32 exact, bytes32 braggingRights) public;
}
