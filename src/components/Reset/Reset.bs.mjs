// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Curry from "rescript/lib/es6/curry.js";
import * as State from "../State/State.bs.mjs";
import * as JsxRuntime from "react/jsx-runtime";

function Reset(props) {
  var playerTurn = props.playerTurn;
  var setBoard = props.setBoard;
  return JsxRuntime.jsx("button", {
              children: "Reset",
              className: "flex justify-center items-center text-slate-300 hover:text-slate-700 bg-slate-700 hover:bg-orange-300 w-40 h-20 rounded-full text-2xl font-bold mt-10 border-2 border-cyan-300",
              id: "btn",
              onClick: (function (param) {
                  Curry._1(setBoard, (function (param) {
                          return State.state;
                        }));
                  Curry._1(playerTurn, (function (param) {
                          return "x";
                        }));
                })
            });
}

var make = Reset;

export {
  make ,
}
/* react/jsx-runtime Not a pure module */
