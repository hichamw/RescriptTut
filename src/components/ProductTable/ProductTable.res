@react.component
let make = (~deleteFromCart, ~updateCart, ~cart) => {
    open MaterialUi
    open Product

    <TableContainer component={TableContainer.Component.string("Paper")} className="product-table">
        <Table>
            <TableHead>
                <TableRow>
                <TableCell> {"Product Name"->React.string} </TableCell>
                <TableCell align=#Right> {"Price"->React.string} </TableCell>
                <TableCell align=#Right> {"Current Quantity"->React.string} </TableCell>
                <TableCell align=#Right> {"New Quantity "->React.string}  </TableCell>
                <TableCell align=#Right> {"Actions"->React.string}  </TableCell>
                </TableRow>
            </TableHead>
            <TableBody>
                {cart
                ->Belt.Array.map((product) =>
                    <ProductRow
                        id={product.id}
                        name={product.name}
                        description={product.description}
                        quantity={product.quantity}
                        price={product.price}
                        deleteFromCart={deleteFromCart}
                        updateCart={updateCart}
                    />
                )
                ->React.array}
            </TableBody>
        </Table>
    </ TableContainer>
}