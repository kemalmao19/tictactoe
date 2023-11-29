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

  <div className="bg-slate-900 flex flex-col justify-center items-center"> 
    <div id="title" className="text-center pt-10 text-slate-100">
      <h1 id="heading" className="text-6xl font-bold flex justify-center"><span className="text-lime-300 pr-3">{React.string("Rescript")}</span>{React.string(" TicTacToe Game")}</h1>
      <p>{React.string("This App created using rescript")}</p>
    </div>
    <Board turn={turn} cell={cell} cellClick={handleClick}/>
    <Reset />
  </div>

}
