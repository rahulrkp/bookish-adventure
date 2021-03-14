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
        let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
        var reversedNames = names.sorted(by: backward)
        print(reversedNames)
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
