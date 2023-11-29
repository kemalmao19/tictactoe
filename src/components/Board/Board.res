@react.component
let make = (~cell, ~turn, ~cellClick) => {  
    <div id="board" className="grid grid-cols-3 mt-10 gap-5">
        {cell
        ->Belt.Array.mapWithIndex((index, item)=>{
            <Cell turn={turn} key={index->string_of_int} onClick={_=>cellClick(index)} value={item} />
        })->React.array}
    </div>
}