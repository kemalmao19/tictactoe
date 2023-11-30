open State
@react.component
let make = (~setBoard, ~playerTurn) => {
    let handleReset = () => {
        setBoard(_=>state)
        playerTurn(_=>"x")
    }
    <button 
        id="btn"
        onClick={_=>handleReset()} 
        className="flex justify-center items-center text-slate-300 hover:text-slate-700 bg-slate-700 hover:bg-orange-300 w-40 h-20 rounded-full text-2xl font-bold mt-10 border-2 border-cyan-300">
        {React.string("Reset")}
    </button>
}