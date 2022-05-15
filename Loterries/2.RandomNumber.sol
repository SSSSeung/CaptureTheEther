pragma solidity ^0.4.21;

contract GuessTheRandomNumberChallenge {
    uint8 answer;

    function GuessTheRandomNumberChallenge() public payable {
        require(msg.value == 1 ether);
        answer = uint8(keccak256(block.blockhash(block.number - 1), now));
    }

    function isComplete() public view returns (bool) {
        return address(this).balance == 0;
    }

    function guess(uint8 n) public payable {
        require(msg.value == 1 ether);

        if (n == answer) {
            msg.sender.transfer(2 ether);
        }
    }
}

contract random {
    bytes32 hash = 
0x086b9a2eadb949a5a6e74a0405ee907c58aabdbbd53c55387d5eca4557a42e8b;
    uint256 ts = 1652627931;

    function ans() public returns(uint8) {
        return uint8(keccak256(hash, ts));
    }
}

// {
// 	"0": "uint8: 185"
// }