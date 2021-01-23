@react.component

let make = (~deleteFromCartResetField, ~updateCartResetField) => {
    open MaterialUi
    open Icons
    <>
        <IconButton color=#Primary onClick={updateCartResetField}>
            <AddShoppingCartIcon />
        </IconButton>

        <IconButton onClick={deleteFromCartResetField}>
            <DeleteIcon />
        </IconButton>
    </>
}