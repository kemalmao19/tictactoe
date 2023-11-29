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

  <div className="bg-slate-900 flex flex-col items-center py-10"> 
    <Header turn=turn/>
    <Board turn={turn} cell={cell} cellClick={handleClick}/>
    <Reset setBoard=setCell/>
  </div>

}
