//
//  LinksViewController.swift
//  TestProj21
//
//  Created by Rahul Patel on 3/5/21.
//

import UIKit


class ListNode {
    var val: Int
    var next: ListNode?
    init(_ value: Int, nextnode: ListNode? = nil) {
        self.val = value
        self.next = nextnode
    }
    func lastNode() -> ListNode? {
        var tail = self
        while tail.next != nil {
            if let nextNode = tail.next {
                tail = nextNode
            }
        }
        return tail
    }
    func append(value: Int) {
        let newList = ListNode(value)
        let tailNode = lastNode()
        tailNode?.next = newList
    }
}

class LinksViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("LinksViewController")
        // Do any additional setup after loading the view.
        //        Input: l1 = [1,2,4], l2 = [1,3,4]
        let list1 = ListNode(2)
        list1.append(value: 3)
        list1.append(value: 4)
        list1.append(value: 5)

        let list2 = ListNode(1)
        list2.append(value: 2)
        list2.append(value: 4)
        
//        list1.lastNode()?.next = list2
//        let list3 =  list1
//        let revList = reverseList(list2)
//        let sum = addTwoNumbers(list1, list2)
//        let list = mergeTwoLists1(list1, list2)
    }
//   list1 [1,3,5] list2 = [2,4,6]
    
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {

        var list1 = l1
        var list2 = l2
        var tmp = ListNode(0)
        let head = tmp

        while list1 != nil && list2 != nil {
            let val1 = list1!.val
            let val2 = list2!.val
            if val1 >= val2 {
                tmp.next = list2
                list2 = list2?.next
            } else {
                tmp.next = list1
                list1 = list1?.next
            }
            tmp.next = list2 ?? list1
        }
        return head.next
    }
    
    func mergeTwoLists1(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var list1 = l1
        var list2 = l2
        
        var tmp = ListNode(0)
        let head = tmp
        while list1 != nil && list2 != nil {
            let v1 = list1!.val
            let v2 = list2!.val
            
            if v1 > v2 {
                tmp.next = list2!
                list2 = list2?.next
            } else {
                tmp.next = list1!
                list1 = list1?.next
            }
            tmp = tmp.next!
        }
        tmp.next = list1 ?? list2
        return head.next
    }
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var list1 = l1
        var list2 = l2
        
        let head: ListNode = ListNode(0)
        var tmp = head
        while list1 != nil && list2 != nil {
            let v1 = list1!.val
            let v2 = list2!.val
            
            if v1 > v2 {
                tmp.next = list2!
                list2 = list2?.next
            } else {
                tmp.next = list1!
                list1 = list1?.next
            }
            tmp = tmp.next!
        }
        tmp.next = list1 ?? list2
        return head.next
    }
    
    func reverseList(_ head: ListNode?) -> ListNode? {
//        return reverseListRecursively(head)
        return reverseListInteratively(head)
    }
    
    func reverseListInteratively(_ head: ListNode?) -> ListNode? {
//        guard var head = head else {
//            return nil
//        }
        // 1,2
        //2,1
        var pointer = head
        var output: ListNode? = nil
        while pointer != nil {
            print(pointer?.val)
            pointer = pointer?.next
        }
        return output
    }
    
//    func reverseListInteratively(_ head: ListNode?) -> ListNode? {
//        var head = head
//        var n: ListNode? = head?.next
//        var p: ListNode? = nil
//        while head != nil {
//
//            head!.next = p
//            p = head
//            head = n
//            n = head?.next
//
//        }
//        return p
//    }

    func reverseListRecursively(_ node: ListNode?) -> ListNode? {
        if let node = node {
            if node.next == nil {
                return node
            }
            let reverse = reverseListRecursively(node.next)
            node.next?.next = node
            node.next = nil
            return reverse
        } else {
            return nil
        }
    }
    
//    func reverseListRecursively(_ head: ListNode?) -> ListNode? {
//        if let head = head {
//
//            if head.next == nil {
//                return head
//            }
//
//            let reversedListHead = reverseListRecursively(head.next)
//
//            head.next?.next = head
//            head.next = nil
//
//            return reversedListHead
//        } else {
//            return nil
//        }
//    }
    
    func mergeTwoLists2(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let output: ListNode?
        var valArr = [Int]()
        var head1 = l1
        var head2 = l2
        while head1 != nil {
            if let value = head1?.val {
                valArr.append(value)
            }
            head1 = head1?.next
        }
        while head2 != nil {
            if let value = head2?.val {
                valArr.append(value)
            }
            head2 = head2?.next
        }
        valArr = valArr.sorted()
        var newList: ListNode?
        for item in valArr {
            if newList != nil {
                let newList = ListNode(item)
                newList.next = newList
            } else {
                newList = ListNode(item)

            }

        }
        print(valArr)
        return head1
    }
//    func showList(_ list: ListNode) {
//        var head: ListNode? = list
//        while head != nil {
//            print(head?.val)
//            head = head?.next
//        }
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
