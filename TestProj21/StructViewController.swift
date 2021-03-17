//
//  StructViewController.swift
//  TestProj21
//
//  Created by Rahul Patel on 3/11/21.
//

import UIKit

struct MyStruct: Equatable {
    var age: Int = 0
    var name: String = "name"
}
class MyClass {
    var leadName = "Rahul"
    var leadAge: Int = 10
    var onePerson = MyStruct(age: 3, name: "rahul")
    var defaultPers = MyStruct()
    func changename(){
        self.leadAge = 15
    }
    static func staticFunc(){
        print("static")
    }
    class func classFunc(){
        print("Myclass classFunc")
    }

}
class Myclass1: MyClass {
    override var leadAge: Int {
        get {
            super.leadAge
        }
        set {
            super.leadAge = newValue
        }
    }
    func staticFunc() {
        print("Myclass1 staticFunc")
    }
    override class func classFunc(){
        super.classFunc()
        print("Myclass1 classFunc")
    }
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
struct Settings {
    static let shared = Settings()
    var user = "Rahul"
    private init () {
    }
}

class Singoleton {
    static let shared = Singoleton()
    var user = "Rahul"
    private init() {}
}

//extension Array {
//    subscript(safe index: Int) -> Element? {
//        if indices ~= index {
//            print(indices,index)
//            return self[index]
//        }
//        return nil
//    }
//}
extension Array {
    subscript(safe index: Int) -> Element? {
//        print(indices,index)

        return indices ~= index ? self[index] : nil
    }
    subscript(duplicate index: Int) -> Int {
        return index * 2
    }
}

class StructViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let str1 = MyStruct(age: 10, name: "rahul")
        let str2 = MyStruct(age: 10, name: "rahul")
        print(str1 == str2)
        var singleton = Settings.shared
        singleton.user = "patel"
        
        print(singleton.user)
        var stack = Stack()
        
        var classSing = Singoleton.shared
        classSing.user = "rahul"
        print(classSing.user)
        print(Singoleton.shared.user)
        stack.push(item: 3)
        stack.push(item: 4)
        print(stack.items)
        print(stack.pop())
        print(stack.items)
        
        let arr = Array(arrayLiteral: [5,5,5,5,5,3,3,3,3])
        print(arr[safe: 2])
        print(arr[duplicate : 3])


        let currentdir = CompassPoint1.east
        var anothdirection = currentdir
        anothdirection.turnnorth()
        print(anothdirection)
        let myclass = MyClass()
        print(myclass.leadAge)
        print(myclass.onePerson.name)
        print(myclass.defaultPers.name)
        let myclass1 = Myclass1()
        myclass1.leadAge = 20
        print(myclass.leadAge)
        print(myclass1.leadAge)
        myclass1.staticFunc()
        Myclass1.staticFunc()
        Myclass1.classFunc()
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
