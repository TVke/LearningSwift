// code explorations
// basic variables

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
	"I am between 0 and 5"
case 6...10:
	"I am between 5 and 10"
case 15:
	"I am 15"
default:
	"I am none of the ones before me"
}

// switch when needed
tester = 1

switch tester {
case 1:
	"1 is enough";
	fallthrough
case 2:
	"2 is more";
case 5:
	"5 is the max";
default:
	"something went wrong"
}

// looping

// for in
let listOfNumbres = [14,17,75,32,99]

for number in listOfNumbres{
	if number > 20{
		"klein"
	}else{
		"groot"
	}
}

let interestingNumbers = [
	"maten":[162,183,194,165],
	"makkers":[149,153,174,190],
]

var largestNumber = 0

for (names,numbers) in interestingNumbers{
	names
	numbers
	for number in numbers{
		if number > largestNumber{
			largestNumber = number 				// quicklook
		}
	}
}
largestNumber

// while

var give = 3
while give < 100 {
	give *= 2
	
//	if give > 40{
//		break
//	}
}
give

var again = 4

repeat{
	again *= 2
}while again < 100

again


// index loop

var everything = 0

for i in 0..<4{
	everything += i
}
everything

// functions

func SayHi(_ to:String,inAGoodMood goodMood:Bool) -> String{
	let emotion = (goodMood) ? "happy" : "sad"
	return "Hi \(to), I am \(emotion)"
}

SayHi("Sam", inAGoodMood: true)

func GiveACar(to person:String, withTheNumber num:Int ) -> String{
	return "\(person) gets a car with the number \(num)"
}

GiveACar(to: "Thomas", withTheNumber: 2)

func AddIncrementer() -> ((Int)->Int){
	func PlusOne(number:Int) -> Int{
		return 1+number
	}
	return PlusOne
}

var counter = AddIncrementer()

counter(4)

// other way
var counter2:(Int) -> Int = {
	number in
	return 1 + number
}

counter2(3)

// objects

class Shape {
	var name = "Triangle"
	var sides = 3
	
	func description() -> String {
		return "\(name) has \(sides) sides."
	}
}

var triangle1 = Shape()
triangle1.description()

class BasisShape{
	var name:String
	var sides:Int
	
	init(name:String, sides:Int) {
		self.name = name
		self.sides = sides
	}
	func description() -> String {
		return "\(name) has \(sides) sides."
	}
}

class Square:BasisShape{
	var ribSize:Double
	
	init(name:String, ribLength:Double) {
		self.ribSize = ribLength
		super.init(name: name, sides: 4)
	}
	
	func surface() -> Double {
		return ribSize*ribSize
	}
	
	override func description() -> String{
		return "\(super.description()) \n It has \(surface())m2"
	}
}

var square1 = Square(name: "S1", ribLength: 20.5)
square1.surface()
square1.description()


// get and set

class 🍕{ // cool right
	var slices = 5.0
	var peacesOfOlives:Double{
		get{
			return 5 * slices
		}
		set{
			slices = newValue / 15.0
		}
	}
}

var pizza = 🍕()
pizza.peacesOfOlives
pizza.peacesOfOlives = 75
pizza.slices
pizza.peacesOfOlives

// enum

enum Card:Int{
	case ace = 1
	
	case two, three, four, five,
	six, seven, eight, nine
	
	case jack, queen, king
	
	func cardDescription() -> String{
		switch self {
		case .ace:
			return "ace"
		case .jack:
			return "jack"
		case .queen:
			return "queen"
		case .king:
			return "king"
		default:
			return String(self.rawValue)
		}
	}
}

let king = Card.king
let rawValue = king.rawValue



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

//Shows the controller in the Live View window to test app like stuff
PlaygroundPage.current.liveView = MyViewController()


// loading a site

import WebKit

let site = URL(string: "https://gamechanging.jordy.detemmerman.mtantwerp.eu")
let request = URLRequest(url: site!)

let WebView = WKWebView(frame: CGRect(x: 0, y: 0, width: 320.0, height:640.0))
WebView.load(request)

//PlaygroundPage.current.liveView = WebView


