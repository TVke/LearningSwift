//: A UIKit based Playground for presenting user interface

//import UIKit
//import PlaygroundSupport
//
//class MyViewController : UIViewController {
//    override func loadView() {
//        let view = UIView()
//        view.backgroundColor = .white
//
//        let label = UILabel()
//        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
//        label.text = "Hallo Word!"
//        label.textColor = .black
//
//        view.addSubview(label)
//        self.view = view
//	}
//}
//
////Present the view controller in the Live View window
//PlaygroundPage.current.liveView = MyViewController()

// code explorations

let test = 2
var tester = 15

let eerst = "Test is \(test) en tester is \(test+tester)"

let listOfNumbres = [14,17,75,32,99]

for number in listOfNumbres{
	if number > 20{
		print("klein\n")
	}else{
		print("groot\n")
	}
}

let interestingNumbers = [
	"maten":[2,3,14,16],
	"makkers":[4,5,7,9],
]

var largestNumber = 0

for (names,numbers) in interestingNumbers{
	print("names")
	for number in numbers{
		if number > largestNumber{
			largestNumber = number
		}
	}
}
print(largestNumber)

//test = 1
tester = 5

switch tester {
case 5:
	print("I am between 0 and 5")
case 10:
	print("I am between 5 and 10")
case 15:
	print("I am between 10 and 15")
default:
	print("I am none of the ones before me")
}

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






