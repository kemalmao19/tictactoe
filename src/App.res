open State
@react.component
let make = () => {
  let (cell, setCell) = React.useState(()=>state)
  let (turn, setTurn) = React.useState(()=>crossTurn)

  let handleClick = (index) => {
    switch (Js.Array.unsafe_get(cell, index) !== "") {
    | false =>
      let newCell = Belt.Array.copy(cell);
      newCell[index] = turn;
      setCell(_ => newCell);

      if (turn === crossTurn) {
        setTurn(_ => circleTurn);
      } else {
        setTurn(_ => crossTurn);
      }
    | true => () // Do nothing when cell[index] is an empty string
    };
  };

  let checkWinner = (cells) => {
    for i in 0 to winningCombination->Belt.Array.length - 1 {
      let combo = winningCombination[i]
      let cellCombo = Belt.Option.getWithDefault(combo, [])
      let [a,b,c] = cellCombo
      // if (a !== 0 &&
      //     a === b &&
      //     a === c) {
      //       Js.log("win")
      //     } else {
      //       Js.log("lose")
      //     }
    }
  }

  React.useEffect1(()=>{
    Some(()=>checkWinner())
  }, [cell])

  <div className="flex flex-col items-center justify-center h-screen my-10"> 
    <Header turn=turn/>
    <Board turn={turn} cell={cell} cellClick={handleClick}/>
    <Reset setBoard=setCell playerTurn=setTurn />
  </div>

}
