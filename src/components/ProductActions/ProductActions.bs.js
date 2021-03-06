// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Core from "@material-ui/core";
import Delete from "@material-ui/icons/Delete";
import AddShoppingCart from "@material-ui/icons/AddShoppingCart";

function ProductActions(Props) {
  var deleteFromCartResetField = Props.deleteFromCartResetField;
  var updateCartResetField = Props.updateCartResetField;
  return React.createElement(React.Fragment, undefined, React.createElement(Core.IconButton, {
                  onClick: updateCartResetField,
                  children: React.createElement(AddShoppingCart, {}),
                  color: "primary"
                }), React.createElement(Core.IconButton, {
                  onClick: deleteFromCartResetField,
                  children: React.createElement(Delete, {})
                }));
}

var make = ProductActions;

export {
  make ,
  
}
/* react Not a pure module */
