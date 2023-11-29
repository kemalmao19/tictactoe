// Generated by ReScript, PLEASE EDIT WITH CARE

import * as JsxRuntime from "react/jsx-runtime";

var x = JsxRuntime.jsx("img", {
      height: "20",
      src: "/icon-x.svg",
      width: "20"
    });

var o = JsxRuntime.jsx("img", {
      height: "20",
      src: "/icon-o.svg",
      width: "20"
    });

function Header(props) {
  return JsxRuntime.jsxs("div", {
              children: [
                JsxRuntime.jsxs("div", {
                      children: [
                        JsxRuntime.jsx("img", {
                              height: "30",
                              src: "/icon-x.svg",
                              width: "30"
                            }),
                        JsxRuntime.jsx("img", {
                              height: "30",
                              src: "/icon-o.svg",
                              width: "30"
                            })
                      ],
                      className: "flex gap-1"
                    }),
                JsxRuntime.jsxs("div", {
                      children: [
                        props.turn === "x" ? x : o,
                        JsxRuntime.jsx("p", {
                              children: "Turn",
                              className: "text-xl font-bold text-slate-300"
                            })
                      ],
                      className: "flex gap-1"
                    }),
                JsxRuntime.jsxs("div", {
                      children: [
                        JsxRuntime.jsx("img", {
                              height: "30",
                              src: "/icon-x.svg",
                              width: "30"
                            }),
                        JsxRuntime.jsx("img", {
                              height: "30",
                              src: "/icon-o.svg",
                              width: "30"
                            })
                      ],
                      className: "flex gap-1"
                    })
              ],
              className: "flex gap-10 items-center",
              id: "header"
            });
}

var make = Header;

export {
  x ,
  o ,
  make ,
}
/* x Not a pure module */