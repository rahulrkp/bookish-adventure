//
//  StructViewController.swift
//  TestProj21
//
//  Created by Rahul Patel on 3/11/21.
//

import UIKit

struct MyStruct {
    var age: Int = 0
    var name: String = "name"
}
class myClass {
    var leadName = "patel"
    var leadAge = 10
    var onePerson = MyStruct(age: 3, name: "rahul")
    var defaultPers = MyStruct()
}
enum CompassPoint1 {
    case east,west,north,south
    mutating func turnnorth() {
        self = .north
    }
}

struct Stack {
    var items = [Int]()
    mutating func push(item: Int) {
        items.append(item)
    }
    mutating func pop() {
        if items.count > 0 {
            items.removeLast()
        }
    }
}

indirect enum MyStack {
    case items([Int])
    case pop(MyStack)
    case push(MyStack)
}

class StructViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var stack = Stack()
        stack.push(item: 3)
        stack.push(item: 4)
        print(stack.items)
        print(stack.pop())
        print(stack.items)

        let currentdir = CompassPoint1.east
        var anothdirection = currentdir
        anothdirection.turnnorth()
        print(anothdirection)
        let myclass = myClass()
        print(myclass.leadAge)
        print(myclass.onePerson.name)
        print(myclass.defaultPers.name)
        let myclass1 = myclass
        myclass1.leadAge = 20
        print(myclass.leadAge)
        print(myclass1 === myclass)
        // Do any additional setup after loading the view.
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
