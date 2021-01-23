@react.component
let make = (~deleteFromCart, ~updateCart, ~name, ~description, ~quantity, ~price, ~id) => {
    open MaterialUi
    let (newProductTotal, setNewProductTotal) = React.useState(_ => 0)
    let determineDescriptionElement = text => 
       switch text {
           |Some(description) => `: ${description}` -> React.string
           |None => React.null
       }

    <TableRow>
        <TableCell scope="row">
            <strong> {name -> React.string} </strong>
            {description -> determineDescriptionElement}
        </TableCell>
        <TableCell align=#Right> {price -> React.float} </TableCell>
        <TableCell align=#Right> {quantity -> React.int} </TableCell>
        <TableCell align=#Right>
            <TextField
                _type="number"
                id="standard-basic"
                value={newProductTotal -> TextField.Value.int}
                label={"New Quantity"->React.string}
                onChange={(e: ReactEvent.Form.t) =>
                setNewProductTotal((e->ReactEvent.Form.target)["value"])}
            />
        </TableCell>
        <TableCell align=#Right>
            <ProductActions
                deleteFromCartResetField={(_: ReactEvent.Mouse.t) => {
                    deleteFromCart(id)
                    setNewProductTotal(_ => 0)
                }}
                updateCartResetField={(_: ReactEvent.Mouse.t) => {
                    updateCart(id, newProductTotal)
                    setNewProductTotal(_ => 0)
                }}
            />
        </TableCell>
    </TableRow>
}