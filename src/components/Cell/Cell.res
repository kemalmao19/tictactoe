let x = <img src="icon-x.svg" width={"50%"} height={"50%"}/>
let o = <img src="icon-o.svg" width={"50%"} height={"50%"}/>

@react.component
let make = (~value, ~turn, ~onClick, ~game) => {
    let hoverClass = (value, turn) =>
        switch value === "" {
        | true =>
            switch turn {
            | "x" => "x-hover"
            | "o" => "o-hover"
            | _ => ""
            }
        | false => ""
    };

    <div 
        id="cell" 
        onClick={game? onClick:(e)=>()} 
        className=`flex justify-center items-center text-6xl mt-2 h-20 w-20 md:h-30 md:w-30 lg:h-40 lg:w-40 bg-slate-700 rounded-xl cursor-pointer ${hoverClass(value, turn)} shadow-xl border-2 border-cyan-300`
    >
        {value==="x"? x: value==="o"? o: <></>}
    </div>
}