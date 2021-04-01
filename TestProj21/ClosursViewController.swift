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

    override func viewDidLoad() {
        super.viewDidLoad()
        let noinout = {print("no in out")}
        noinout()
        
        let divide = {(a:Int,b:Int)->Int in
            return a/b
        }
        print(divide(6,2))

        let clousur: (Int, Int) -> Int = {(num1,num2) -> Int in
            return num1 + num2
        }
        let addResult = clousur(3, 6)
        print(addResult)
        
        let sortHand: (Int,Int) -> Int = {
            return $0 + $1
        }
        print(sortHand(4,7))
        
        let superSort: (Int,Int)->Int = {$0+$1}
        print(superSort(5,4))

        let inferC1 = {(a:Int,b:Int) -> Int in
            return a*b
        }
        print(inferC1(4,3))
        
        let cl2 = {"I am cl"}
        let cl21 = {"I am cl"}()
        print(cl2())
        print(cl21)
    }
    func closureDivi(cdivid: (_ a:Int,_ b:Int) -> Int) {
        let div = cdivid
        let result = div(1,1)
        print(result)
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
