// Generated by ReScript, PLEASE EDIT WITH CARE


function makeProduct(id, name, price, quantityOpt, description, param) {
  var quantity = quantityOpt !== undefined ? quantityOpt : 0;
  return {
          id: id,
          name: name,
          price: price,
          quantity: quantity,
          description: description
        };
}

var productDetails = [
  makeProduct("coffee", "bag of coffee", 13.12, 0, undefined, undefined),
  makeProduct("saddle", "emu saddle", 50.1, 0, "For riding emus, I guess...", undefined),
  makeProduct("glasses", "sunglasses", 15.1, 0, undefined, undefined),
  makeProduct("stickers", "laptop stickers", 3.0, 0, undefined, undefined),
  makeProduct("shirt", "t shirt", 8.0, 0, "Now with Cats!", undefined),
  makeProduct("laptop", "laptop", 1000.0, 0, "Great for coding!", undefined),
  makeProduct("desk", "desk", 300.0, 0, undefined, undefined),
  makeProduct("chair", "chair", 100.0, 0, undefined, undefined)
];

export {
  makeProduct ,
  productDetails ,
  
}
/* productDetails Not a pure module */
