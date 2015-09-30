import UIKit

var input = 51
var count = 0
for var i = 1; i<=input; i++ {
    if input%i==0{
        count++;
    }
}
if count==2{
    println("You are prime!")
}
else{
    println("You are composite with \(count-2) divisors!")
}