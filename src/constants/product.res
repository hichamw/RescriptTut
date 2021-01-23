type product = {
    id: string,
    name: string,
    price: float,
    quantity: int,
    description: option<string>,
}

let makeProduct = (~id, ~name, ~price, ~quantity=0, ~description=?, ()) => {
    id,
    name,
    price,
    quantity,
    description
}

let productDetails = [
    makeProduct(
        ~id="coffee", 
        ~name="bag of coffee", 
        ~price=13.12, 
        ~quantity=0, 
        (),
    ),
    makeProduct(
        ~id="saddle", 
        ~name="emu saddle", 
        ~price=50.1, 
        ~quantity=0, 
        ~description="For riding emus, I guess...",
        (),
    ),
    makeProduct(
        ~id="glasses", 
        ~name="sunglasses", 
        ~price=15.1, 
        ~quantity=0, 
        (),
    ),
    makeProduct(
        ~id="stickers", 
        ~name="laptop stickers", 
        ~price=3.0, 
        ~quantity=0, 
        (),
    ),
    makeProduct(
        ~id="shirt",
        ~name="t shirt",
        ~description="Now with Cats!",
        ~price=8.0,
        ~quantity=0,
        (),
    ),
    makeProduct(
        ~id="laptop",
        ~name="laptop",
        ~description="Great for coding!",
        ~price=1000.0,
        ~quantity=0,
        (),
    ),
    makeProduct(
        ~id="desk", 
        ~name="desk", 
        ~price=300.0, 
        ~quantity=0, 
        (),
    ),
    makeProduct(
        ~id="chair", 
        ~name="chair", 
        ~price=100.0, 
        ~quantity=0, 
        (),
    ),

]