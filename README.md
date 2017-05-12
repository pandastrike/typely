# typely

> Deprecated in favor of [Fairmont multimethods](https://github.com/pandastrike/fairmont-multimethods).

---

A lightweight (read: relatively fast) type-checking library in CoffeeScript.

    {overload} = require "typely"

    class Multiplier 
  
      total: 1
  
      multiply: overload (match) ->
        match "array", (array) -> @multiply element for element in array
        match "number", (number) -> @total *= number
    
    multiplier = new Multiplier

    multiplier.multiply 2
    multiplier.multiply [ 3, 4, 5 ]

    console.log multiplier.total
    
Typely is limited to checking for types, [as per Douglas Crockford's `typeOf` function][0]. That is: null, undefined, boolean, number, string, date, regexp, array, object, and function. This limitation allows it to run relatively fast, by simply using as an index a string based on the types of the given arguments and seeing whether it returns a function.

[0]:http://javascript.crockford.com/remedial.html
`
## Installation

    npm install typely
