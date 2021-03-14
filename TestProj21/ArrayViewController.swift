//
//  ArrayViewController.swift
//  TestProj21
//
//  Created by Rahul Patel on 3/13/21.
//

import UIKit

class ArrayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let darr = [[1,2,3],
                    [4,5,6],
                    [7,8,9]]
       let sss = [[00,01,02],
        [10,11,12],
        [20,21,22]]
        let output = [[7,4,1],
                      [8,5,2],
                      [9,6,3]]
        for arr in darr {
            for item in arr {
                print(item)
            }
        }
        
        for (index1, arr1) in darr.enumerated() {
            for (index2,item) in arr1.enumerated() {
//                print(index1,index2,item)
            }
        }
        var mainArr = [[Int]]()
        let len = darr.count - 1
        for index in 0..<darr.count {
            var arrone = [Int]()
            for index2 in (0..<darr.count) {
                arrone.append(darr[len-index2][index])
            }
            mainArr.append(arrone)
        }
        print(mainArr)
        // Do any additional setup after loading the view.
    }
    func insertBits(n: Int, a: Int, b: Int, k: Int) -> Int {
        var n = n
        for i in a...b+1 {
                let j = i-a
            if ((k & (1 << j)) != 0) {
                n |= (1 << i)}
            else {
                n &= ~(1 << i)}
        }
            return n
        
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
