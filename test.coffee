{overload} = require "./index"

class Multiplier 
  
  total: 1
  
  multiply: overload (match) ->
    match "array", (array) -> @multiply element for element in array
    match "number", (number) -> @total *= number
    
multiplier = new Multiplier

multiplier.multiply 2
multiplier.multiply [ 3, 4, 5 ]

console.log multiplier.total
