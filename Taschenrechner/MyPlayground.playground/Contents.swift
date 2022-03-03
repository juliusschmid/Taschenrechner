import UIKit

var opertion : String = "+"
var result : Double = 0.0

// switch = Eine Fallunterscheidung
// case = Fall

switch opertion {
    case "+": result = 3 + 4
    case "-": result = 10 - 5
    case "x": result = 3 * 5
    default:
    break
}

if opertion == "+" {
    result = 3 + 4
} else if opertion == "-" {
    result = 10 - 5
} else if opertion == "x" {
    result = 3 * 5
}
