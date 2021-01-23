open Product

@react.component
let make = () => {
        open MaterialUi
    let initialCartValue = 0.0
    let (cart, setCart) = React.useState(_ => productDetails)
    let (calculatedPrice, setCalculatedPrice) = React.useState(_ => initialCartValue);

    let deleteFromCart = id => {
        let updatedCart = Cart.findIndexAndUpdateQuantity(cart, id, 0)
        setCart(_=> updatedCart)
    }

    let updateCart = (id, value) => {
        let updatedCart = Cart.findIndexAndUpdateQuantity(cart, id, value)
        setCart(_=> updatedCart)
    }

    let calculatePrice = () => {
        let totalPrice = Cart.calculateTotalPrice(cart, initialCartValue)
        setCalculatedPrice(_ => totalPrice)
    }

    <>
        <Typography align=#Center variant=#H3>
            {"Welcome to the React Type Demo App"->React.string}
        </Typography>
        <Typography align=#Center variant=#Body1>
            {"Here you can buy some items for your team"->React.string}
        </Typography>
        <Container>
            <ProductTable
            cart={cart}
            deleteFromCart={deleteFromCart}
            updateCart={updateCart}
            />
            <Card className="shopping-cart">
                <Button variant=#Contained color=#Primary onClick={_ => calculatePrice()}>
                    {"Calculate Price"->React.string}
                </Button>
                <h3> {"Your total is"->React.string} </h3>
                <h3> {calculatedPrice
                ->Js.Float.toFixedWithPrecision(~digits=2)
                ->React.string
                }
                </h3>
            </Card>
        </Container> 
    </>
}