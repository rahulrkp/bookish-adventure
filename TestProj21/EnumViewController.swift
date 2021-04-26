//
//  EnumViewController.swift
//  TestProj21
//
//  Created by Rahul Patel on 3/11/21.
//

import UIKit

enum CompassPoint: String,CaseIterable {
    case east
    case west
    case north
    case south
}
enum Planet: Int {
    case mercury = 0, venus, earth, mars, jupiter, saturn, uranus, neptune
}

enum Beverage: CaseIterable {
    case cofee, tea, juice
    var name: String {
        switch self {
        
        case .cofee:
            return ""
        case .tea:
            return ""

        case .juice:
            return ""

        }
    }
}

fileprivate enum Person {
    case myName(name: String)
    case myAGE(age: Int)
}

indirect enum AirthmaticExpression {
    case value(Int)
    case add(AirthmaticExpression,AirthmaticExpression)
    case multi(AirthmaticExpression,AirthmaticExpression)
}

enum MyColor {
    case green
    case red
    case blue
    case all
}

extension MyColor {
    var value : UIColor {
        switch self {
        case .blue:
            return UIColor.blue
        case .red:
            return UIColor.red
        case .green:
            return UIColor.green
        default:
            return UIColor.white
        }
    }
}
 
class EnumViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = MyColor.green.value
//        print(MyColor.blue.value)
        let three = AirthmaticExpression.value(3)
        let four = AirthmaticExpression.value(4)
        let add = AirthmaticExpression.add(three, four)
        print(evaluate(expression: add))
//        getCompass(cp: .north)
//        getPlanetStatus(planet: .earth)
//        print(Beverage.allCases.count)
//        for item in Beverage.allCases {
//            print(item)
//        }
//        getPerson(person: Person.myAGE(age: 4))
//        getPerson(person: Person.myName(name: "rahul"))
    }
    
    func evaluate(expression: AirthmaticExpression) -> Int {
        switch expression {
        case .value(let value):
            return value
        case .add(let left, let right ):
            return evaluate(expression: left) + evaluate(expression: right)
        case .multi(let left, let right ):
            return evaluate(expression: left) * evaluate(expression: right)
        }
    }
    
   fileprivate func getPerson(person: Person) {
        switch person {
        case .myAGE(age: let age):
            print(age)
        case .myName(name: let name):
            print(name)
        default:
            print("nothing")
        }
    }
    func getPlanetStatus(planet: Planet) {
        switch planet {
        case .earth:
            print("earth=\(planet.rawValue)")
        default:
            print("not a safe place=\(planet)")
        }
    }
    func getCompass(cp: CompassPoint) {
        switch cp {
        case .east:
            print(cp.rawValue)
        case .west:
            print("west")
        case .north:
            print(cp.rawValue)
        case .south:
            print("south")
        default:
            print("default")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
