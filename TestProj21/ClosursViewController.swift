//
//  ClosursViewController.swift
//  TestProj21
//
//  Created by Rahul Patel on 3/12/21.
//

import UIKit

fileprivate class ListNode<T> {
     public var value: T
     public var next: ListNode<T>?
     public init(_ x: T) {
         self.value = x
         self.next = nil
     }
 }

enum MyFColor: Float {
        
    case redcolor
    case greencolor
    case yellocolor
    var mycolor: UIColor {
        switch self {
        case .redcolor:
            return UIColor.red
        case .greencolor:
            return .green
        case .yellocolor:
            return .yellow
        }
    }
}

class ClosursViewController: UIViewController {

    fileprivate func removeKFromList(l: ListNode<Int>?, k: Int) -> ListNode<Int> {
        var current: ListNode? = l
        let head = current!
        var prev = current
        while current != nil {
            if current?.value == k {
                prev?.next = current?.next
            }
            current = current?.next
            prev = current
        }
        return head
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let clos = { (input) -> Int in
//            statement
//        }
        let str = { print("welcome")}
        str()
        
        let devideC = { (val1: Int, val2: Int) -> Int in
            return val1/val2
        }
        print(devideC(4, 2))
        
        func strAccend(string1: String, string2: String) -> Bool {
            string1 < string2
        }
        print(strAccend(string1: "a", string2: "b"))
            
        let sum = {(val1: Int, val2: Int) -> Int in
            return val1 + val2
        }
        print(sum(4,6))
        
        var count:[Int] = [5, 10, -6, 75, 20]
        let decend = count.sorted { (a, b) -> Bool in
            a > b
        }
        let assend = count.sorted { (a, b) -> Bool in
            a < b
        }
        
        print(decend)
        print(assend)
        
        let color = MyFColor.redcolor
        self.view.backgroundColor = color.mycolor
    }
    
    func backward(_ str1: String, _ str2: String) -> Bool {
        return str1 < str2
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
