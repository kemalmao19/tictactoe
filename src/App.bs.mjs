// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Board from "./components/Board/Board.bs.mjs";
import * as Curry from "rescript/lib/es6/curry.js";
import * as Reset from "./components/Reset/Reset.bs.mjs";
import * as State from "./components/State/State.bs.mjs";
import * as React from "react";
import * as Header from "./components/Header/Header.bs.mjs";
import * as JsxRuntime from "react/jsx-runtime";

function App(props) {
  var match = React.useState(function () {
        return State.state;
      });
  var setCell = match[1];
  var cell = match[0];
  var match$1 = React.useState(function () {
        return State.crossTurn;
      });
  var setTurn = match$1[1];
  var turn = match$1[0];
  var match$2 = React.useState(function () {
        return true;
      });
  var setGame = match$2[1];
  var game = match$2[0];
  var handleClick = function (index) {
    if (cell[index] !== "") {
      return ;
    }
    var newCell = cell.slice(0);
    newCell[index] = turn;
    Curry._1(setCell, (function (param) {
            return newCell;
          }));
    if (turn === State.crossTurn) {
      return Curry._1(setTurn, (function (param) {
                    return State.circleTurn;
                  }));
    } else {
      return Curry._1(setTurn, (function (param) {
                    return State.crossTurn;
                  }));
    }
  };
  React.useEffect(function () {
        return (function (param) {
                  if (cell[0] === cell[1] && cell[1] === cell[2] && cell[2] !== "") {
                    Curry._1(setGame, (function (param) {
                            return false;
                          }));
                    return Curry._1(setCell, (function (param) {
                                  return State.state;
                                }));
                  } else if (cell[3] === cell[4] && cell[3] === cell[5] && cell[5] !== "") {
                    Curry._1(setGame, (function (param) {
                            return false;
                          }));
                    return Curry._1(setCell, (function (param) {
                                  return State.state;
                                }));
                  } else if (cell[6] === cell[7] && cell[7] === cell[8] && cell[8] !== "") {
                    Curry._1(setGame, (function (param) {
                            return false;
                          }));
                    return Curry._1(setCell, (function (param) {
                                  return State.state;
                                }));
                  } else if (cell[0] === cell[3] && cell[3] === cell[6] && cell[6] !== "") {
                    Curry._1(setGame, (function (param) {
                            return false;
                          }));
                    return Curry._1(setCell, (function (param) {
                                  return State.state;
                                }));
                  } else if (cell[1] === cell[4] && cell[4] === cell[7] && cell[7] !== "") {
                    Curry._1(setGame, (function (param) {
                            return false;
                          }));
                    return Curry._1(setCell, (function (param) {
                                  return State.state;
                                }));
                  } else if (cell[2] === cell[5] && cell[5] === cell[8] && cell[8] !== "") {
                    Curry._1(setGame, (function (param) {
                            return false;
                          }));
                    return Curry._1(setCell, (function (param) {
                                  return State.state;
                                }));
                  } else if (cell[0] === cell[4] && cell[4] === cell[8] && cell[8] !== "") {
                    Curry._1(setGame, (function (param) {
                            return false;
                          }));
                    return Curry._1(setCell, (function (param) {
                                  return State.state;
                                }));
                  } else if (cell[0] === cell[1] && cell[1] === cell[2] && cell[2] !== "") {
                    Curry._1(setGame, (function (param) {
                            return false;
                          }));
                    return Curry._1(setCell, (function (param) {
                                  return State.state;
                                }));
                  } else if (cell[2] === cell[4] && cell[4] === cell[6] && cell[6] !== "") {
                    Curry._1(setGame, (function (param) {
                            return false;
                          }));
                    return Curry._1(setCell, (function (param) {
                                  return State.state;
                                }));
                  } else {
                    return ;
                  }
                });
      });
  return JsxRuntime.jsxs("div", {
              children: [
                JsxRuntime.jsx(Header.make, {
                      turn: turn,
                      game: game
                    }),
                JsxRuntime.jsx(Board.make, {
                      cell: cell,
                      turn: turn,
                      cellClick: handleClick,
                      onGame: game
                    }),
                JsxRuntime.jsx(Reset.make, {
                      setBoard: setCell,
                      playerTurn: setTurn,
                      onGame: setGame
                    })
              ],
              className: "flex flex-col items-center justify-center h-screen lg:my-10"
            });
}

var make = App;

export {
  make ,
}
/* Board Not a pure module */
