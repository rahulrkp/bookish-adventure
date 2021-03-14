//
//  LinkListGenericViewController.swift
//  TestProj21
//
//  Created by Rahul Patel on 3/14/21.
//

import UIKit
fileprivate class ListNode<T> {
    var value: T
    var next: ListNode<T>?
    init(_ x: T) {
        self.value = x
        self.next = nil
    }
}
class LinkListGenericViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //[3, 1, 2, 3, 4, 5]
        let list1 = ListNode(3)
        var current = list1
        let a = 1
        if a == 1 {
            current.next = ListNode(1)
            current = current.next!
        }
        if a == 1 {
            current.next = ListNode(2)
            current = current.next!

        }
        if a == 1 {
            current.next = ListNode(3)
            current = current.next!

        }
        if a == 1 {
            current.next = ListNode(4)
            current = current.next!

        }
        if a == 1 {
            current.next = ListNode(5)
            current = current.next!

        }
 
//        [9876, 5432, 1999] and b = [1, 8001]
        let lista = ListNode(1)
        lista.next = ListNode(2)
        lista.next?.next = ListNode(3)

        let listb = ListNode(4)
        listb.next = ListNode(5)
        listb.next?.next = ListNode(6)
//        print(addTwoHugeNumbers(a: lista, b: listb))
//        reverse(lista)

        //For l1 = [1, 2, 3] and l2 = [4, 5, 6], the output should be

//        mergeTwoLinkedLists(l1: lista, l2: listb)
        let letters = ["a", "b", "c", "d", "e"]
//        print(letters[1...3])
        var arr = [[String]]()
        
        var tempthree = [String]()
        for item in letters {
            if tempthree.count == 3 {
                arr.append(tempthree)
                tempthree = [String]()
            }
            tempthree.append(item)
        }
        arr.append(tempthree)
        print(arr)
//        letters[3...].forEach { print($0) } // prints d e

    }

    fileprivate func reverseNodesInKGroups(l: ListNode<Int>?, k: Int) -> ListNode<Int>? {
        var list1 = l
        var arr = [Int]()
        while list1 != nil {
            if let value = list1?.value {
                arr.append(value)
            }
            list1 = list1?.next
        }
        var arr2d = [[Int]]()
        var arrThree = [Int]()
        for item in arr {
            if arrThree.count == k {
                arr2d.append(arrThree)
                arrThree = [Int]()
            }
            arrThree.append(item)
        }
        arr2d.append(arrThree)
        
        var arrFinalreverse = [[Int]]()
        
        for item in arr2d {
            arrFinalreverse.append(item.reversed())
        }
        
        var current = ListNode(0)
        var head = current
        for array in arrFinalreverse {
            for item in array {
                let new = ListNode(item)
                current.next = new
                if let next = current.next {
                    current = next
                }
            }
        }
        
        return head.next
    }

    
    
    fileprivate func mergeTwoLinkedLists(l1: ListNode<Int>?, l2: ListNode<Int>?) -> ListNode<Int> {
        var arr1 = [Int]()
        var arr2 = [Int]()
        var list1: ListNode<Int>? = l1
        var list2: ListNode<Int>? = l2
        
        while list1 != nil {
            if let value = list1?.value {
                arr1.append(value)
            }
            list1 = list1?.next
        }
        
        while list2 != nil {
            if let value = list2?.value {
                arr2.append(value)
            }
            list2 = list2?.next
        }
        
        let allArr = arr1 + arr2
        var headList = ListNode(0)
        let output = headList
        for item in allArr.sorted() {
            let newList = ListNode(item)
            headList.next = newList
            if let next = headList.next {
                headList = next
            }
        }
        
        return output.next ?? ListNode(0)
    }

    fileprivate func addTwoHugeNumbers(a: ListNode<Int>?, b: ListNode<Int>?) -> ListNode<Int>? {
        var current = ListNode(0)
        let head = current
        var listA = reverse(a)
        var listB = reverse(b)
        
        while listA != nil || listB != nil {
            let sum = (listA?.value ?? 0) + (listB?.value ?? 0)
            let newList = ListNode(sum)
            current.next = newList
            current = current.next!
            listA = listA?.next
            listB = listB?.next
        }
        return head.next
    }
//    [1,2,3]
//    [3,2,1]
    fileprivate func reverse(_ list: ListNode<Int>?) -> ListNode<Int>? {
        var current = list
        var prev: ListNode<Int>?
        while current != nil {
            let temp = current?.next
            current?.next = prev
            prev = current
            current = temp
        }
        return prev
    }
    
//    fileprivate func reverse(_ head: ListNode<Int>?) -> ListNode<Int>? {
//        var current = head
//        var previous: ListNode<Int>?
//        var next: ListNode<Int>?
//
//        while current != nil {
//            next = current?.next
//            current!.next = previous
//            previous = current
//            current = next
//        }
//
//        return previous
//    }
    fileprivate func isListPalindrome(l: ListNode<Int>?) -> Bool {
        var current = l
        var arrVal = [Int]()
        while current != nil {
            arrVal.append(current?.value ?? 0)
            current = current?.next
        }
        return arrVal == arrVal.reversed()
        // return true
    }
    
    fileprivate func removeKFromList(l: ListNode<Int>?, k: Int) -> ListNode<Int>? {
        
        var current: ListNode? = ListNode(0)
        current?.next = l
        let head = current
        var prev = current
        while current != nil {
            if current?.value == k {
                prev?.next = current?.next
            } else {
                prev = current
            }
            current = current?.next
        }
        return (head?.next!)!
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
