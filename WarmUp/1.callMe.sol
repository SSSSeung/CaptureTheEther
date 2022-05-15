// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract CallMeChallenge {
    bool public isComplete = false;

    function callme() public {
        isComplete = true;
    }
}

contract CallMe {
    CallMeChallenge public cm;

    constructor(CallMeChallenge addr) { cm = addr;  }

    function ans() public {
        cm.callme();
    }


}