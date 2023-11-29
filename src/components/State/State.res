type state = array<string>

let state = ["","","","","","","","",""]

let crossTurn = "x"
let circleTurn = "o" 

let winningCombination = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    
    [0,3,6],
    [1,4,7],
    [2,5,8],

    [0,4,8],
    [2,4,6],
]
