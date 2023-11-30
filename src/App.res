open State
@react.component
let make = () => {
  let (cell, setCell) = React.useState(()=>state)
  let (turn, setTurn) = React.useState(()=>crossTurn)
  let (game, setGame) = React.useState(()=>true)

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

  let won = () => {
    setGame(_=>false)
    setCell(_=>state)
  }

  let checkWin = () => {
    if cell[0]===cell[1] && cell[1]===cell[2] && cell[2]!==Some("") {
      won()
    }
    else if cell[3]===cell[4] && cell[3]===cell[5] && cell[5]!==Some("") {
      won()
    }
    else if cell[6]===cell[7] && cell[7]===cell[8] && cell[8]!==Some("") {
      won()
    }
    else if cell[0]===cell[3] && cell[3]===cell[6] && cell[6]!==Some("") {
      won()
    }
    else if cell[1]===cell[4] && cell[4]===cell[7] && cell[7]!==Some("") {
      won()
    }
    else if cell[2]===cell[5] && cell[5]===cell[8] && cell[8]!==Some("") {
      won()
    }
    else if cell[0]===cell[4] && cell[4]===cell[8] && cell[8]!==Some("") {
      won()
    }
    else if cell[0]===cell[1] && cell[1]===cell[2] && cell[2]!==Some("") {
      won()
    }
    else if cell[2]===cell[4] && cell[4]===cell[6] && cell[6]!==Some("") {
      won()
    }
  }

  React.useEffect(()=>{
    Some(()=>checkWin())
  })

  <div className="flex flex-col items-center justify-center h-screen lg:my-10"> 
    <Header turn=turn game=game/>
    <Board onGame={game} turn={turn} cell={cell} cellClick={handleClick}/>
    <Reset setBoard=setCell playerTurn=setTurn onGame=setGame />
  </div>

}
