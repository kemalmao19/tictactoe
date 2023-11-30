open State
@react.component
let make = (~setBoard, ~playerTurn, ~onGame) => {
    let handleReset = () => {
        onGame(_=>true)
        setBoard(_=>state)
        playerTurn(_=>"x")
    }
    <button 
        id="btn"
        onClick={_=>handleReset()} 
        className="flex justify-center items-center text-slate-300 hover:text-slate-700 bg-slate-700 hover:bg-orange-300 px-10 py-5 rounded-full text-lg lg:text-2xl font-bold mt-10 border-2 border-cyan-300">
        {React.string("Reset")}
    </button>
}