@react.component
let make = (~turn, ~game) => {

    let iconTurn = (whichTrun) => switch whichTrun {
      | "x" => <img src="/icon-x.svg" width={"20"} height={"20"}/>
      | "o" => <img src="/icon-o.svg" width={"20"} height={"20"}/>
      | _ => <></>
    }

    <div id="header" className="flex gap-10 items-center">
      <div className="flex gap-1">
        <img src="/icon-x.svg" width="30" height="30"/>
        <img src="/icon-o.svg" width="30" height="30"/>
      </div>
      <div className="flex gap-1 items-center">
        <div>{iconTurn(turn)}</div>
        <p className="text-xl font-bold text-slate-300">{game?"Turn"->React.string: "Win"->React.string}</p>
      </div>
      <div className="flex gap-1">
        <img src="/icon-x.svg" width="30" height="30"/>
        <img src="/icon-o.svg" width="30" height="30"/>
      </div>
    </div>
}