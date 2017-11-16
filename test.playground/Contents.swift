// code explorations
// variable

let test = 2
//test = 1 // not possible to change a constant
var tester = 15

let eerst = "tester + test is \(test+tester)"
type(of: eerst)

var number = 5.7
type(of: number)

var floatDef:Float = 2.9
var doubleDef:Double = 2.9


// switch (super cool)

tester = 5

switch tester {
case 0,1,2,3,4,5:
	print("I am between 0 and 5")
case 6...10:
	print("I am between 5 and 10")
case 15:
	print("I am 15")
default:
	print("I am none of the ones before me")
}

// switch when needed
tester = 1

switch tester {
case 1:
	print("1 is enough");
	fallthrough
case 2:
	print("2 is more");
case 5:
	print("5 is the max");
default:
	print("something went wrong")
}

// looping

// for in
let listOfNumbres = [14,17,75,32,99]

for number in listOfNumbres{
	if number > 20{
		print("klein\n")
	}else{
		print("groot\n")
	}
}

let interestingNumbers = [
	"maten":[162,183,194,165],
	"makkers":[149,153,174,190],
]

var largestNumber = 0

for (names,numbers) in interestingNumbers{
	print(names)
	print(numbers)
	for number in numbers{
		if number > largestNumber{
			largestNumber = number
		}
	}
}
print(largestNumber)

// while

var give = 3
while give < 100 {
	give *= 2 // watch quicklook
}

print(give)


//using UIKit to show applike stuff

import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hallo Word!"
        label.textColor = .black

        view.addSubview(label)
        self.view = view
	}
}

//Presents MyViewController in the Live View window to test app stuff
PlaygroundPage.current.liveView = MyViewController()






