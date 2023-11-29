let x = <img src="icon-x.svg" />
let o = <img src="icon-o.svg" />

@react.component
let make = (~value, ~turn, ~onClick) => {
    let hoverClass = (x) => switch x {
        | "x" => "x-hover"
        | "o" => "o-hover"
    }
    <div 
        id="cell" 
        onClick={onClick} 
        className=`flex justify-center items-center text-6xl mt-2 h-40 w-40 bg-slate-700 rounded-xl cursor-pointer ${hoverClass(turn)}`>
        {value==="x"? x: value==="o"? o: <></>}
    </div>
}