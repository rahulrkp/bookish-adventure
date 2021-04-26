//
//  ViewController.swift
//  TestProj21
//
//  Created by Rahul Patel on 3/3/21.
//

import UIKit

struct User: Codable {//Encodable, Decodable {
    var name: String
    var age: Int
}
class myview: UIView{}
class ViewA: myview {
    
}
class ViewB: ViewA {
    
}
class ViewC: ViewB {
    
}
class ViewD: ViewB {}
class HomeViewController: UIViewController {
    
    func parseAndAddOne(_ s: String) {
        let greeting = "Hi there! It's nice to meet you! 👋"
        let endOfSentence = greeting.firstIndex(of: "!")!
        let firstSentence = greeting[...endOfSentence]
        print(firstSentence)
        // firstSentence == "Hi there!"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print(parseAndAddOne("hello10"))
        //        let values: [Any] = [1, 2, "Fish"]
        //        print(#file)
        //        print(#line)
        //        print(#function)
        
        //        let nums = [4,1,2,1,2,2,2]
        //        print(majorityElement(nums))
        // Do any additional setup after loading the view.
        //        var Input: [Character] = ["H","a","n","n","a","h"]
        //        reverseString(&Input)
        //        print(Input)
        //        print(reverse("rahul"))
        //        var inputStr = "rahul patel"
        //        reverseStr(&inputStr)
        //        let s = "a", t = "b"
        //        print(isAnagram(s,t))
        //        var input = [0,1,0,3,12]
        //        moveZeroes(&input)
                var prices = [23171, 21011, 21123, 21366, 21013, 21367] //7
//                print(maxProfit(prices))
        print(MaxProfit(&prices))
        //        print(titleToNumber("AB"))
        //        romanToInt("LVIII")
        //        lengthOfLongestSubstring("ohomm")
        //        print(findMedianSortedArrays([], [1,2,3,4,5]))
        //        print(longestPalindrome("babad"))
        //        print(isPalindrom("aba"))
        //        print(longestPalindrome("ababc"))
        //        print(reverse(900000))
        //        print(longestCommonPrefix(["flower","flow","flight"]))
        //        print(longestCommonPrefix(["abcd", "ab"]))
        //        print(isValidParentheses("([)]"))
        //        var input = [0,0,1,1,1,2,2,3,3,4]
        //        print(removeDuplicates(&input))
        //        print(plusOne([1,2,3]))
//        print(climbStairs(9))
        //        var nums1 = [1,2,3,0,0,0]
        //        merge(&nums1, 3, [2,5,6], 3)
        //        selectionSort()
        //        bubbleSort()
        //        findDuplicateString("abcbda")
        //        print(firstDuplicate(a: [2, 1, 3, 5, 3, 2]))
        //        print(sumOfTwo(a: [1,2,3], b: [10, 20, 30, 40], v: 42))
        //        let test = -2000 % (100000007)
        //        print(sumInRange(nums: [34, 19, 21, 5, 1, 10, 26, 46, 33, 10], queries: [[3,7],
        //                                                                                 [3,4],
        //                                                                                 [3,7],
        //                                                                                 [4,5],
        //                                                                                 [0,5]]))
        
        //        let input = [-2, 2, 5, -11, 6]//[1, -2, 3, -4, 5, -3, 2, 2, 2]
        //        print(arrayMaxConsecutiveSum2(inputArray: input))
        //        print(firstNotRepeatingCharacter(s: "abacabad"))
        //        print("abcd".components(separatedBy: "4"))
        //        print(amendTheSentence(s: "CodesignalIsAwesome"))
        //        let path = "/home/a/./x/../b//c/"
        //        print(simplifyPath(path: path))
        
        //        let a = [6, 7, 3, 8]//, the output should be
        //        nextLarger(a) = [7, 8, 8, -1].
        //        nextLarger(a: a)
        //        let a = [1, 4, 2, 1, 7, 6]
        //        nearestGreater(a: a)
        _ = [2.4, 1]
        _ = [5, 7.3]
        //        print(perfectCity(departure: departure, destination: destination))
        //        let s = "John has USD 300. Mary borrowed USD 75 from him."
        //        print(myAtoi(s))
        //        let s = "2[b3[a]]"
        //        print(decodeString(s: s))
        //        let s = "(((((*(()((((*((**(((()()*)()()()*((((**)())*)*)))))))(())(()))())((*()()(((()((()*(())*(()**)()(())"//"(*))"//"(*)"//"()"
        //        print(checkValidParenthesis(s))
        //        let s = "({[]})"
        //        print(isValidbrackets(s))
        
        //        myAnyObject(obj1: "6", obj2: s as AnyObject)
        //          var arr = [1, 2, 3, 5]
        //        print(missingInteger(&arr))
        //        var arr = [3,1,2,4,3]
        //        print(TapeEquilibrium(&arr))
        //        var jumpfrog = [1,3,1,4,2,3,5,4]
        //        print(FrogRiverOne(5, &jumpfrog))
        
        //        var arr = [3,4,4,6,1,4,4]
        //        print(maxCounters(3, arr))
        //        var A = [1, 3, 6, 4, 1, 2]
        //        print(MissingInteger(&A))
        
        //        var arr = [4,1,3]
        //        print(sequence(&arr))
        //        reverseWithSpecial(str: "abasdas@sdfsdf")
        //        let A = 4, B = 11 , K = 2
        //        print(CountDiv(A, B, K))
        //        var arr = [0,1,0,1,1]
        //        print(PassingCars(&arr))
        //        var brackets = "{[()()]}"
        //        print(Brackets(&brackets))
        //        var arr = [2,1,1,2,3,1]
        //        print(Distinct(&arr))
        //        print( MaxProductOfThree(&arr))
        //        var arr = [10, 50, 5, 1]//, 1, 8, 20]
        //        print(Triangle(&arr))
        
//        var a = [4, 3, 2, 1, 5], b = [0, 1, 0, 0, 0]
//        print(FishRiver(&a, &b))
        
        //        You are given three arrays of integers a, b, and c. Your task is to find the longest contiguous subarray of a containing only elements that appear in b but do not appear in c.
        //        var a = [2, 1, 7, 1, 1, 5, 3, 5, 2, 1, 1, 1], b = [1, 3, 5], c = [2, 3]
        //        print(longestInversionalSubarray(a: a, b: b, c: c))
        //        let arr = [8,5,6,16,5]
        //        print(boundedRatio(a: arr, l: 1, r: 3))
        //        let a = [25, 2, 3, 57, 38, 41]
        //        print(mostFrequentDigits(a: a))
        //        let a = [[3, 3, 4, 2],
        //                 [4, 4],
        //                 [4, 0, 3, 3],
        //                 [2, 3],
        //                 [3, 3, 3]]
        //        print(meanGroups(a: a))
        //        let numbers = [1, 2, 1, 3, 4]
        //        print(isZigzag(numbers: numbers))
        
        //        let a = [2, 4, 2, 7, 1, 6, 1, 1, 1], m = 4, k = 8
        //        print(segmentsWithSum(a: a, m: m, k: k))
        //        let n = 5, a = [4, 0, 1, -2, 3]
        //        print(mutateTheArray(n: n, a: a))
        //        let arr = [1, 2, 2, 1, 2, 1, 2], queries = [[1, 1, 2], [1, 2, 1]]
        //            , the output should be findTheTriples(arr, queries) = [4, 6].
        //        print(findTheTriples(arr: arr, queries: queries))
        //        let s = "abcdaaae"
        //        print(threeCharsDistinct(s: s))
        //        print(palindromeCutting(s: "aaacodedoc"))
        //        let grid = [[0,1,-1],[1,0,-1],[1,1,1]]
        //
        //        print(cherryPickup(grid))
        //      let   pattern = "010" , s = "amazing"
        //        print(binaryPatternMatching(pattern: pattern, s: s))
        
        //       let m = [[1, 0, 1, 5, 6],
        //             [3, 3, 0, 3, 3],
        //             [2, 9, 2, 1, 2],
        //             [0, 2, 4, 2, 0]]
        //
        //        print(bestSquares(m: m, k: 2))
        
        //        let arr =  [1, 2, 2, 4]
        //        print(canMakeTriangle(arr: arr))
        
        //        let number = "456"
//        let number = "6666"
        //        print(threeDivSubsequences(number: number))
        
        //        print(getStringAllSubstring(str: "456"))
        //        var A = [1, 3, 6, 4, 1, 2]
        //        print(solution(&A))
//        print(Nesting("())"))
//        var arr = [3, 4, 3, 2, 3, -1, 3, 3]
//        print(Dominator(&arr))
//        var test = [4, 3, 4, 4, 4, 2]
//        print(EquiLeader(&test))
//        var test = [3, 2, 6, -1, 4, 5, -1, 2]
//        print(MaxDoubleSliceSum(&test))
//        let arr1 = [-1,2]
//        let arr2 = [1,2,3,4]
//        print(addNum(array1: arr1, array2: arr2))
//        var str = "Codility We test coders"
//        print(cropStr(&str, 14))
//        let a1 = [8, 5, 6, 16, 5]
//        let l = 1
//        let r = 3
//        print(boundedRatio(a: a1, l: l, r: r))
//        let pattern = "010"
//        let s = "amazing"
//        print(binaryPatternMatching1(pattern: pattern, s: s))
//        let a2 = [25, 35, 872, 228, 53, 278, 872]
//        print(digitAnagrams(a: a2))
//        let arr = [1,12,-5,-6,50,3], k = 4
//        print(findMaxAverage(arr, k))
//        let arr = [-2,1,-3,4,-1,2,1,-5,4]
//        maxSubArray(arr)
//        let coins = [186,419,83,408]
//        , amount = 6249
//        print(coinChange(coins, amount))
//        let a = [1, 2, 3], b = [1, 2, 3]
//        let k = 31
//        print(countTinyPairs(a: a, b: b, k: k))
//
//        let s1 = "super", s2 = "tower"
//        print(mergeStrings(s1: s1, s2: s2))
        let events = [["John_0","out"]]//[["John_0","in"],
//                      ["Mary_0","in"],
//                      ["John_0","out"],
//                      ["Mary_0","out"]]
//        print(shopInAndOutEvents(events: events))
//        let str = "babad"
//        print(longestPalindrome(str))
//        let nums = [-1,0,1,2,-1,-4]
//        print(threeSum(nums))
//        let nums = [8,1,2,2,3]
//        print(smallerNumbersThanCurrent(nums))
        let s = "codeleet", indices = [4,5,6,7,0,2,1,3]
//        print(restoreString(s, indices))
        print(firstUniqChar(s))
    }
    func firstUniqChar(_ s: String) -> Int {
        var strDict: [String: Int] = [:]
        var oneArr = [String]()
        for (_,item) in s.enumerated(){
            if let valueExist = strDict[item.description]{
                strDict[item.description] = valueExist + 1
                oneArr.remove(at: oneArr.firstIndex(of: item.description)!)
            } else {
                oneArr.append(item.debugDescription)
                strDict[item.description] = 1
            }
        }
        print(oneArr)
        return -1
    }
    
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        let strArr: [Character] = Array(s)
        var output = Array(repeating: "", count: indices.count)
        
        for (index,item) in indices.enumerated(){
            let value = strArr[index]
            output[item] = String(value)
        }
        return output.joined()
    }

    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var output = [Int]()
        for index in 0..<nums.count {
            var numcount = 0
            for index1 in 0..<nums.count{
                if nums[index] > nums[index1] {
                    numcount += 1
                }
            }
            output.append(numcount)
        }
        return output
    }
    
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var subArr3 = [[Int]]()
        func arrContain(arr: [Int]) -> Bool {
            for item in subArr3 {
                let set1 = Set(item)
                let set2 = Set(arr)
                if set1 == set2 {
                    return true
                }
            }
            return false
        }
        var subArr: [[Int]] = [[]]
        for item in nums {
            for oneSubArr in subArr {
                let tempArr = oneSubArr + [item]
                subArr.append(tempArr)
                if tempArr.count == 3, tempArr.reduce(0, +) == 0, !arrContain(arr: tempArr) {
                    subArr3.append(tempArr)
                }
            }
        }
        return subArr3
    }

    func longestPalindrome(_ s: String) -> String {
        func isPalindromT(tempArr: [Character]) -> Bool {
            for i in 0...tempArr.count/2 {
                let first = tempArr[i]
                let last = tempArr[tempArr.count-1-i]
                if first != last {
                    return false
                }
            }
            return true
        }
        let strArr = Array(s)
        var largeStrArr  = ""
        for index in 0..<strArr.count {
            for index1 in index..<s.count{
                let oneStr = Array(strArr[index...index1])
                if largeStrArr.count<oneStr.count ,isPalindromT(tempArr: oneStr) {
                    largeStrArr = String(oneStr)
                }
            }
        }
        return largeStrArr
    }

    
    func shopInAndOutEvents(events: [[String]]) -> Bool {
        var userDict = [String: String]()
        for item in events {
            let key = item[0]
            let value = item[1]
            if value == "in" {
                if let dictValue = userDict[key], dictValue == "in" {
                    return false
                } else {
                    userDict[key] = value
                }

            } else if value == "out" {
                if (userDict[key] == nil) {
                    return false
                }
                if let dictValue = userDict[key], dictValue == "out" {
                    return false
                } else {
                    userDict.removeValue(forKey: key)
                }
            }
        }
        return userDict.values.isEmpty
        
    }
    
    func mergeStrings(s1: String, s2: String) -> String {
        
        return ""
    }
    
    func countTinyPairs(a: [Int], b: [Int], k: Int) -> Int {
        let ArrCount = a.count
        var output = 0
        for index in 0..<ArrCount {
            let itemA = a[index]
            let itemB = b[ArrCount - 1 - index]
            print(itemA,itemB)
            let ab = Int("\(itemA)\(itemB)")
            if ab! < k {
                output += 1
            }
        }
        return output
    }

    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        let coins = coins.sorted(by: >)
        var count = 0
        var target = amount
        for item in coins {
            if target > item {
                count = count + target/item
                target = target % item //1
                if target == 0 {
                    return count
                }
            }
        }
        return -1
    }
    
    func maxSubArray(_ nums: [Int]) -> Int {
        var output = Int.min
        var subArr: [[Int]] = [[]]
        for index in 0..<nums.count {
            for index1 in index..<nums.count {
                let arrOne = nums[index...index1]
                subArr.append(Array(arrOne))
                let sum = arrOne.reduce(0, +)
                if sum > output {
                    output = sum
                }
            }
        }
       
        print(subArr)
        return output
    }
    func digitAnagrams(a: [Int]) -> Int64 {
        
        var output = 0
        for (index,item) in a.enumerated(){
            let str1 = String(item).sorted()
            for index1 in index..<a.count {
                let str2 = String(a[index1]).sorted()
                if String(str1).contains(String(str2)) {
                    output += 1
                }
            }
        }
        return Int64(output)
    }
    
    func binaryPatternMatching1(pattern: String, s: String) -> Int {
        let vowel = ["a","e","i","o","u","y"]
        var output = 0
        for index in 0..<s.count-pattern.count{
            for indexP in 0..<pattern.count{
                let matchp = pattern[pattern.index(pattern.startIndex , offsetBy: indexP)]
                _ = s[s.index(s.startIndex, offsetBy: index+indexP)]
                if matchp == "0" && vowel.contains(String(matchp)) {
                    output += 1
                } else if matchp == "1" && !vowel.contains(String(matchp)) {
                    output += 1
                }
            }
        }
        return output
    }
    
    func boundedRatio(a: [Int], l: Int, r: Int) -> [Bool] {
        var output = [Bool]()
        for (index,item) in a.enumerated(){
            let x = Double(item)/Double(index+1)
            if x == floor(x) && x<=Double(r) && x>=Double(l) {
                output.append(true)
            } else {
                output.append(false)
            }
        }
        return output
    }

    
     func cropStr(_ message : inout String, _ K : Int) -> String { // test1 USB
        // write your code in Swift 4.2.1 (Linux)
        let messageLength = message.count
        if messageLength <= K {
            return message
        }
        var output = ""
        var previousWord = ""
        for (index,str) in message.enumerated() {
            if index == K {
                if str != " " {
                    break
                }
            } else {
                if str == " " {
                    output = output + " " + previousWord
                    previousWord = ""
                } else {
                    previousWord.append(str)
                }
            }
        }
        return output
    }
    
    func addNum(array1: [Int], array2: [Int]) -> [Int] { //test2 USB
        // start here
        if array1.count < 1 {
            return array2
        } else if array2.count < 1 {
            return array1
        }
        var maxArrcount = array1.count
        if array2.count > maxArrcount {
            maxArrcount = array2.count
        }
        var output = [Int]()
        for index in 0..<maxArrcount {
            var item1 = 0
            if index < array1.count {
                item1 = array1[index]
            }
            var item2 = 0
            if index < array2.count {
                item2 = array2[index]
            }
            let sum = abs(item1) + abs(item2)
            output.append(sum)
        }
        
        return output
    }
    
    public func MaxProfit(_ A : inout [Int]) -> Int {
        // write your code in Swift 4.2.1 (Linux)
        var maxProf = 0
        
        for (index,_) in A.enumerated() {
            
            if index > 0 {
                let profitloss = A[index] - A[index - 1]
                print(profitloss)
                if profitloss > 0, maxProf < profitloss {
                    maxProf = profitloss
                }
            }
            
        }
        return maxProf
    }

    public func MaxDoubleSliceSum(_ A : inout [Int]) -> Int {
        if A.count < 4 {
            return 0
        }
        var sum = 0
        var slice = 0
        var mini = Int.max
        A[A.count - 1] = 0
        let pairs = Array(zip(Array(0..<A.count), A))

        for (index, item) in pairs[1..<A.count-1] {
            if sum + item > 0 {
                if index + 1 < A.count {
                    sum = max(0, sum) + item
                } else {
                    sum = sum + item
                }
                slice = max(sum,slice)
            } else {
                sum = item
            }
            mini = min(mini, item)
        }
        return slice - mini
    }
    func getLeaderDict(_ A : [Int]) -> [Int:Int] {
        let mappedItems = A.map { ($0, 1) }
        let dictcounts = Dictionary(mappedItems, uniquingKeysWith: +)
        return dictcounts
    }
    public func EquiLeader(_ A : inout [Int]) -> Int {
        // write your code in Swift 4.2.1 (Linux)
        var candidate = 0
        
        var count = 0
        
        for i in A {
            if count == 0 {
                candidate = i
            }
            if candidate == i {
                count += 1
            } else {
                count -= 1
            }
        }
        
        count = 0
        
        for i in A {
            if i == candidate {
                count += 1
            }
        }
        
        var equiLeaders = 0
        
        var leftLeaders = 0
        
        var rightLeaders = count
        
        for i in 0..<A.count {
            if A[i] == candidate {
                leftLeaders += 1
                rightLeaders -= 1
            }
            
            if leftLeaders > (i + 1) / 2 && rightLeaders > (A.count - i - 1) / 2 {
                equiLeaders += 1
            }
        }
        
        return equiLeaders
    }
    func getLeader(_ A : inout [Int]) -> Int {
        var dict = [Int: Int]()
        for item in A {
            if let value = dict[item] {
                let itemCount = value + 1
                dict[item] = itemCount
            } else {
                dict[item] = 1
            }
        }
        var maximumV:(key:Int,value:Int) = (0,0)
        for item in dict {
            if item.value > maximumV.value {
                maximumV = item
            }
        }
        return maximumV.key
    }
    public func Dominator(_ A : inout [Int]) -> Int {
//        leaders
        // write your code in Swift 4.2.1 (Linux)
        var dict = [Int: Int]()
        for (_,item) in A.enumerated() {
            if let value = dict[item] {
                let itemCount = value + 1
                dict[item] = itemCount
            } else {
                dict[item] = 1
            }
        }
        var domValue = Int(Double(A.count) * 0.5)
        var dom = -1
        for i in dict.keys {
            if let value = dict[i], value > domValue {
                dom = i
                domValue = value
            }
        }
        return A.index(of: dom) ?? -1
    }
    
    public func StoneWall(_ H : inout [Int]) -> Int {
        // write your code in Swift 2.2
        var counter = 0
        var stack = [Int]()
        for i in H {
            var height = stack.last ?? 0
            if i < height {
                repeat {
                    stack.removeLast()
                    height = stack.last ?? 0
                } while height > i
                if i > height {
                    counter += 1
                    stack.append(i)
                }
            } else if i > height {
                counter += 1
                stack.append(i)
            }
        }
        return counter
        
    }
    
    func subarraysFilter(_ arr: [Int]) -> [[Int]] {
        var result: [[Int]] = [[]]
        for elem in arr {
            for subarray in result {
                result.append(subarray + [elem])
            }
        }
        print(result)
        return result
    }
    
    func bestSquares(m: [[Int]], k: Int) -> Int {
        var maxsum = 0
        for index1 in 0...m.count - k {
            for index2 in 0...m.count - k {
                let x1 = index1
                let x2 = index2
                let y1 = index1+1
                let y2 = index2+1
                let sum = (m[x1][x2] + m[x1][x1] + m[x1][y1] + m[y2][y2])
                if sum > maxsum {
                    maxsum = sum
                }
            }
        }
        return maxsum
    }
    func getStringAllSubstring(str: String) {
        let withPartialRange = str[..<str.index(str.startIndex, offsetBy: 1)]
        print(withPartialRange)
    }
    
    func threeDivSubsequences(number: String) -> Int {
        let arrInt = Array(number)
        var arrIntA = [Int]()
        for item in arrInt{
            arrIntA.append(Int(String(item))!)
        }
        let allSubArr = subarraysFilter(arrIntA)
        print(allSubArr)
        var count = 0
        for item in allSubArr {
            var myString = ""
            _ = item.map{ myString = myString + "\($0)" }
            let myInt = Int(myString)
            if let num = myInt, num % 3 == 0 {
                count += 1
            }
        }
        return count
    }
    
    func canMakeTriangle(arr: [Int]) -> [Int] {
        var output = [Int]()
        for index in 0...arr.count-3 {
            let a = arr[index]
            let b = arr[index+1]
            let c = arr[index+2]
            if a + b > c, a + c > b, b + c > a {
                output.append(1)
            } else {
                output.append(0)
            }
        }
        return output
    }
    
    //    func longestInversionalSubarray(a: [Int], b: [Int], c: [Int]) -> [Int] {
    //        var allPosibleArr = [Int]()
    //        var stringArr = String(a)
    //        stringArr.jo
    //        for item in a {
    //
    //        }
    ////        let arrayAnotC = a.filter { !c.contains($0) }
    //
    ////        let arrayA = subarrays(arrayAnotC, count: b.count)
    ////        let setA = Set(arrayA)
    ////        print(setA)
    //
    ////        let allArr = subarraysFilter(arrayA)
    ////        var count = 0
    ////        for item in allArr {
    ////            print(item)
    ////            let answer = zip(item, b).map {$0.0 == $0.1}
    //////            let difference = b.difference(from: item)
    ////
    ////            print(answer)
    ////        }
    //        return [0]
    //    }
    
    func binaryPatternMatching(pattern: String, s: String) -> Int {
        let patterArr = Array(pattern) // [0,1,0]
        let wovel = ["a","e","i","o","u","y"]
        
        func isMatcing(_ strtemp: String) -> Bool {
            let strArr = Array(strtemp)
            for (index,item) in strArr.enumerated() {
                if wovel.contains(String(item)) && (patterArr[index] != "0") {
                    return false
                } else if !wovel.contains(String(item)) && (patterArr[index] == "0") {
                    return false
                }
            }
            return true
        }
        let stringArr = Array(s)
        var count = 0
        for index in 0...stringArr.count - patterArr.count {
            let oneArr = stringArr[index...index+patterArr.count-1]
            
            print(oneArr)
            if isMatcing(String(oneArr)) {
                count += 1
            }
        }
        return count
    }
    
    func cherryPickup(_ grid: [[Int]]) -> Int {
        var count = 0
        for arr in grid {
            for (_,item) in arr.enumerated() {
                print(item)
                if item == 1 {
                    count += 1
                }
            }
        }
        return count
    }
    func palindromeCutting( s: String ) -> String {
        func getChar(_ str:String, _ index:Int) -> String {
            let char = str[str.index(str.startIndex, offsetBy: index)]
            return String(char)
        }
        if s.count < 1 {
            return ""
        }
        var str = s
        var temp = str + "?"
        str += reverse(str)
        temp += str
        let n = temp.count
        var lps = Array(repeating: 0, count: n)
        
        for i in 1..<n {
            var len = lps[i-1]
            while len > 0 && (getChar(temp, len) != getChar(temp, i)) {
                len = lps[len - 1]
            }
            if getChar(temp, i) == getChar(temp, len) {
                len += 1
            }
            lps[i] = len
        }
        
        
        return temp
    }
    func subarrays(_ arr: [Int], count: Int) -> [[Int]] {
        var result: [[Int]] = [[]]
        for elem in arr {
            for subarray in result {
                result.append(subarray + [elem])
            }
        }
        return result.filter({$0.count == count})
    }
    
    func getnumberOfcount(bigarr: [Int], subArr:[Int]) -> Int  {
        let result = subarrays(bigarr, count: subArr.count)
        let findSubarr = result.filter({$0 == subArr})
        return findSubarr.count
    }
    
    func findTheTriples(arr: [Int], queries: [[Int]]) -> [Int64] {
        var output = [Int64]()
        for item in queries {
            let count = getnumberOfcount(bigarr: arr, subArr: item)
            output.append(Int64(count))
        }
        return output
    }
    
    func threeCharsDistinct(s:String) {
        let strArr = Array(s)
        var count = 0
        for index in 0..<strArr.count-2 {
            let one = strArr[index]
            let two = strArr[index+1]
            let three = strArr[index+2]
            if (one != two) && (one != three) && (two != three) {
                count += 1
            }
        }
        print("threeCharsDistinct=\(count)")
    }
    
    func mutateTheArray(n: Int, a: [Int]) -> [Int] {
        var b = Array(repeating: 0, count: n)
        for index in 0..<b.count{
            
            let currentValue = a[index]
            var prevValue = 0
            var nextValue = 0
            if index > 0 {
                prevValue = a[index-1]
            }
            if index < a.count-1 {
                nextValue = a[index+1]
            }
            b[index] = currentValue+nextValue+prevValue
        }
        return b
    }
    func segmentsWithSum(a: [Int], m: Int, k:Int) -> Int {
        var stackArr = [[Int]]()
        for index in 0...a.count-m {
            let firstIndex = index
            let lastIndex = index + m
            let arrone = Array(a[firstIndex..<lastIndex])
            stackArr.append(arrone.sorted(by: >))
        }
        print(stackArr)
        var output = 0
        for item in stackArr {
            if (item[0] + item[1]) > k {
                output += 1
            }
        }
        return output
    }
    
    func isZigzag(numbers:[Int]) -> [Int] {
        if numbers.count < 3 {
            return [0]
        }
        var stack = [Int]()
        for index in 1..<numbers.count-1 {
            let current = numbers[index]
            let next = numbers[index+1]
            let prev = numbers[index-1]
            if (current < next && current < prev) || (current>next && current>prev) {
                stack.append(1)
            } else {
                stack.append(0)
            }
        }
        return stack
    }
    
    
    //    meanGroups(a) = [[0, 4],
    //                     [2, 3],
    //                     [1]]
    func meanGroups(a: [[Int]]) -> [[Int]] {
        var dict = [Int:Double]()
        for (index,item) in a.enumerated() {
            let sum = item.reduce(0, +)
            let value = Double(sum)/Double(item.count)
            dict[index] = value
        }
        let sortedTwo = dict.sorted {
            return $0.value > $1.value
        }
        var dictIndex = [Double:[Int]]()
        for (key,value) in sortedTwo {
            if let anykey = dictIndex[value] {
                var tempArr = anykey
                tempArr.append(key)
                dictIndex[value] = tempArr
            } else {
                dictIndex[value] = [key]
            }
        }
        let output = dictIndex.values.sorted { (arr1, arr2) -> Bool in
            if let one = arr1.first, let two = arr2.first {
                return one < two
            }
            return false
        }
        
        return output
    }
    
    func mostFrequentDigits(a: [Int]) -> [Int] {
        var dict = [Int: Int]()
        
        func addDict(arr:[Int]) {
            for item in arr {
                if let value = dict[item] {
                    dict[item] = value + 1
                } else {
                    dict[item] = 1
                }
                
            }
        }
        for item in a {
            let string = String(item)
            
            let digits = string.compactMap{ $0.wholeNumberValue } // [1, 2, 3, 4, 5, 6]
            
            addDict(arr: digits)
        }
        let maxArr = dict.filter({$0.value == dict.values.max()})
        return Array(maxArr.keys).sorted(by: <)
    }
    
//    func boundedRatio(a: [Int], l: Int, r: Int) -> [Bool] {
//        var x: Int
//        var out = Array(repeating: false, count: a.count)
//        for i in 0..<a.count {
//            if Int(a[i]) % (i + 1) == 0 {
//                x = Int(a[i]) / (i + 1)
//                if x >= l && x <= r {
//                    out[i] = true
//                } else {
//                    out[i] = false
//                }
//            } else {
//                out[i] = false
//            }
//        }
//        return out
//    }
    
    public func FishRiver(_ A : inout [Int], _ B : inout [Int]) -> Int {
        // write your code in Swift 2.2
        var flowingDown: [Int] = []
        
        var survivors = 0
        
        for i in 0..<A.count {
            if B[i] == 0 {
                if flowingDown.count == 0 {
                    survivors += 1
                } else {
                    while flowingDown.count > 0 {
                        if A[i] > flowingDown.last! {
                            flowingDown.removeLast()
                        } else {
                            break
                        }
                        
                        if flowingDown.count == 0 {
                            survivors += 1
                        }
                    }
                }
            } else {
                flowingDown.append(A[i])
            }
        }
        
        return survivors + flowingDown.count
    }
    
    
    public func Triangle(_ A : inout [Int]) -> Int {
        // write your code in Swift 4.2.1 (Linux)
        if A.count < 3 {
            return 0
        }
        A.sort()
        for index in 2..<A.count {
            let p = A[index]
            let q = A[index-1]
            let r = A[index-2]
            let pq = p+q
            let qr = q+r
            let pr = p+r
            if pq > r && qr > p && pr > q {
                return 1
            }
        }
        return 0
    }
    
    public func NumberOfDiscIntersections(A : inout [Int]) -> Int {
        // write your code in Swift 2.2
        let N = A.count
        
        if N < 2 {
            return 0
        }
        
        var discStart: [Int] = Array(repeating: 0, count: N)
        
        var discEnd: [Int] = Array(repeating: 0, count: N)
        
        for i in 0..<N {
            discStart[max(0, i - A[i])] += 1
            
            if i + A[i] < 0 {
                discEnd[N - 1] += 1
            } else {
                discEnd[min(N - 1, i + A[i])] += 1
            }
        }
        
        var n = 0
        
        var result = 0
        
        for i in 0..<N {
            if discStart[i] > 0 {
                result += n * discStart[i]
                result += discStart[i] * (discStart[i] - 1) / 2
                
                if result > 10000000 {
                    return -1
                }
                
                n += discStart[i]
            }
            
            if discEnd[i] > 0 {
                n -= discEnd[i]
            }
        }
        
        return result
    }
    
    public func  MaxProductOfThree(_ A : inout [Int]) -> Int {
        // write your code in Swift 4.2.1 (Linux)
        let sortingArr = A.sorted()
        let count = sortingArr.count
        let max1 = sortingArr[count-1]
        let max2 = sortingArr[count-2]
        let max3 = sortingArr[count-3]
        
        let min1 = sortingArr[0]
        let min2 = sortingArr[1]
        
        let a = max1*max2*max3
        let b = min1*min2*max1
        
        return max(a, b)
        
    }
    
    public func Distinct(_ A : inout [Int]) -> Int {
        // write your code in Swift 4.2.1 (Linux)
        return Set(A).count
        var stack = [Int]()
        for item in A{
            if !stack.contains(item){
                stack.append(item)
            }
        }
        return stack.count
    }
    
    
    public func Brackets(_ S : inout String) -> Int {
        // write your code in Swift 4.2.1 (Linux)
        //        let dictStr = ["[": "]", "(":")","{":"}"]
        var stack = ""
        for item in S{
            switch item {
            case "[","{","(":
                stack.append(item)
            case ")":
                print(item)
                if stack.last == "(" {
                    stack.removeLast()
                } else {
                    return 0
                }
            case "}":
                print(item)
                if stack.last == "{" {
                    stack.removeLast()
                } else {
                    return 0
                }
            case "]":
                print(item)
                if stack.last == "[" {
                    stack.removeLast()
                } else {
                    return 0
                }
            default:
                break
            }
        }
        return stack.isEmpty ? 1 : 0
    }
    
    
    //    A[0] = 0
    //      A[1] = 1
    //      A[2] = 0
    //      A[3] = 1
    //      A[4] = 1
    public func PassingCars(_ A : inout [Int]) -> Int {
        // write your code in Swift 4.2.1 (Linux)
        var count = 0
        
        var p = 0
        
        for i in A {
            if i == 0 {
                p += 1
            } else {
                count += p
            }
            
            if count > 1000000000 {
                return -1
            }
        }
        
        return count
    }
    
    public func MinAvgTwoSlice(_ A : inout [Int]) -> Int {
        // write your code in Swift 4.2.1 (Linux)
        var sums = Array(repeating: 0, count: A.count)
        var index = 0
        var min = Double.greatestFiniteMagnitude
        
        for i in 0..<sums.count {
            let sum = i - 1 < 0 ? 0 : sums[i - 1]
            let sum2 = i - 2 < 0 ? 0 : sums[i - 2]
            let sum3 = i - 3 < 0 ? 0 : sums[i - 3]
            
            sums[i] = sum + A[i]
            
            if i > 0 {
                let avg = Double(sums[i] - sum2) / 2
                if avg < min {
                    index = i - 1
                    min = avg
                }
            }
            
            if i > 1 {
                let avg = Double(sums[i] - sum3) / 3
                if avg < min {
                    index = i - 1
                    min = avg
                }
            }
        }
        return index
        
    }
    
    public func GenomicRangeQuery(_ S : inout String, _ P : inout [Int], _ Q : inout [Int]) -> [Int] {
        // write your code in Swift 4.2.1 (Linux)
        var retArr = [Int]()
        var chrArr = [Character]()
        
        
        for chr in S {
            chrArr.append(chr)
        }
        
        
        for i in 0..<P.count {
            
            var minFactor = 4
            
            if P[i] - Q[i] == 0 {
                if chrArr[P[i]] == "A"{
                    minFactor = 1
                }else if chrArr[P[i]] == "C"{
                    minFactor = 2
                }else if chrArr[P[i]] == "G"{
                    minFactor = 3
                }
            }else {
                for j in P[i]...Q[i] {
                    
                    if chrArr[j] == "A"{
                        minFactor = 1
                        break
                    }else if chrArr[j] == "C"{
                        minFactor = 2
                    }else if chrArr[j] == "G"{
                        if minFactor > 2 {
                            minFactor = 3
                        }
                    }
                }
            }
            
            retArr.append(minFactor)
        }
        
        return retArr
    }
    public func CountDiv(_ A : Int, _ B : Int, _ K : Int) -> Int {
        // write your code in Swift 4.2.1 (Linux)
        //   let A = 6, B = 11 , K = 2
        _ = A
        var firstDivident = A
        if A % K != 0 {
            firstDivident = A + (K - A%K)
        }
        
        let lastDivident = B - (B % K)
        return (lastDivident-firstDivident)/K + 1
        //        return 0
        
    }
    
    func reverseWithSpecial(str: String) -> String {
        let str = "abcd$e"
        let specialChar = "!@#$%^&*"
        var strArr = Array(str)
        _ = str.count
        for index in 0..<strArr.count/2 {
            let oneCh = strArr[1]
            print(oneCh.isNumber)
            if !specialChar.contains(strArr[index]) && !specialChar.contains(strArr[str.count-1-index]) {
                let temp = strArr[index]
                strArr[index] = strArr[str.count-1-index]
                strArr[str.count-1-index] = temp
            }
        }
        return String(strArr)
    }
    
    public func sequence(_ A : inout [Int]) -> Int {
        // write your code in Swift 4.2.1 (Linux)
        var dict = [Int: Bool]()
        for item in A {
            dict[item] = true
        }
        for item in 1...A.count {
            if dict[item] == nil {
                return 0
            }
        }
        return 1
    }
    public func MissingInteger(_ A : inout [Int]) -> Int {
        // write your code in Swift 4.2.1 (Linux)
        var dict = [Int: Bool]()
        for item in A {
            dict[item] = true
        }
        
        var count = 1
        for item in 1...A.count {
            if dict[item] == nil {
                return item
            }
            count += 1
        }
        
        return count
        /////////////////////////
        var counter = [Int: Bool]()
        for i in A {
            counter[i] = true
        }
        
        var i = 1
        while true {
            if counter[i] == nil {
                return i
            } else {
                i += 1
            }
        }
    }
    
    public func maxCounters(_ N : Int, _ A : [Int]) -> [Int] {
        // write your code in Swift 3.0 (Linux)
        var minElement = 0
        var maxElement = 0
        var arr = Array(repeating: 0, count: N)
        for item in A {
            if item <= N {
                let index = item - 1
                if arr[index ] < minElement  {
                    arr[index] = minElement + 1
                } else {
                    arr[index] += 1
                }
                maxElement = max(arr[index], maxElement)
            } else {
                minElement = maxElement
            }
        }
        
        for i in 0..<arr.count {
            if arr[i] < minElement {
                arr[i] = minElement
            }
        }
        
        return arr
    }
    
    public func FrogRiverOne(_ X : Int, _ A : inout [Int]) -> Int {
        // write your code in Swift 4.2.1 (Linux)
        var filledX = Array(repeating: -1, count: X)
        
        for (i, x) in A.enumerated() {
            if x <= X && filledX[x-1] == -1 {
                filledX[x-1] = i
            }
        }
        
        var maxT = 0
        for x in filledX {
            if x == -1 { // never filled
                return -1
            }
            else {
                maxT = max(maxT, x)
            }
        }
        
        return maxT
        
    }
    
    public func TapeEquilibrium(_ A : inout [Int]) -> Int {
        // write your code in Swift 4.2.1 (Linux)
        
        let totalT  = A.reduce(0, +)
        
        var leftT = 0
        var rightT = totalT
        var minDif = Int.max
        let n = A.count
        for p in 0 ..< n-1 {
            let x = A[p]
            leftT += x
            rightT -= x
            
            let dif = abs(leftT - rightT)
            minDif = min(minDif, dif)
        }
        return minDif
    }
    
    public func missingInteger(_ A : inout [Int]) -> Int {
        // write your code in Swift 4.2.1 (Linux)
        //       [1,2,3,4,5]
        var sum = (A.count + 1)*(A.count+2)/2
        
        for item in A {
            sum = sum - item
        }
        
        return sum
    }
    public func frogJump(_ X : Int, _ Y : Int, _ D : Int) -> Int {
        // write your code in Swift 4.2.1 (Linux)
        
        let initial = Y - X
        return Int(ceil(Double(initial)/Double(D)))
        
    }
    func myAnyObject(obj1: Any, obj2: AnyObject) {
        print(obj1,obj2)
        var myobj: Any = [5,7,"hh"]
        var myobj1 = 5 as Any
        myobj = "5"
        myobj1 = "5"
        
    }
    //    Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
    //"(){}[]"
    func isValidbrackets(_ s: String) -> Bool {
        var dict = [Character:Character]()
        dict["("] = ")"
        dict["{"] = "}"
        dict["["] = "]"
        var stack = [Character]()
        for item in s {
            if dict[item] != nil {
                stack.append(item)
            } else {
                if let lastelement = stack.last,lastelement == item {
                    stack.removeLast()
                } else {
                    return false
                }
            }
        }
        return stack.isEmpty
    }
    
    func Nesting(_ S: String) -> Int {
        // write your code in Swift 4.2.1 (Linux)
        //        let dictStr = ["[": "]", "(":")","{":"}"]
        var stack = ""
        for item in S{
            switch item {
            case "(":
                stack.append(item)
            case ")":
                print(item)
                if stack.last == "(" {
                    stack.removeLast()
                } else {
                    return 0
                }
            default:
                break
            }
        }
        return stack.isEmpty ? 1 : 0
    }
    
    func checkValidParenthesis(_ s: String) -> Bool {
        var star = 0
        var open = 0
        
        for item in s {
            if item == "(" {
                open += 1
            } else if item == ")" {
                open -= 1
            } else if item == "*" {
                star += 1
            }
        }
        if abs(open) > star {
            return false
        }
        if star >= abs(open) {
            return true
        }
        
        return false
    }
    //    func decodeString(s: String) -> String {
    //        var output = ""
    //        var stackNum = [Int]()
    //        var stackStr = [String]()
    //        var str = ""
    //
    //        for item in s {
    //            if item.isNumber {
    //                for index in
    //            }
    //        }
    //
    //        return output
    //    }
    
    func myAtoi(_ s: String) -> String {
        let output = ""
        for (index,item) in s.components(separatedBy: " ").enumerated() {
            print(index,Int(item))
            let decimalChar = CharacterSet.decimalDigits
            _ = item.rangeOfCharacter(from: decimalChar)
            //            let intVal = Int(decimalChar)
            //            if let intVal = Int(item) {
            //                let decimalChar = CharacterSet.decimalDigits
            //                let deciRange = item.rangeOfCharacter(from: decimalChar)
            //                let val = Double(intVal) * 0.8
            //                output.append(String(val))
            //                output.append(" ")
            //            } else {
            //                output.append(item)
            //                output.append(" ")
            //            }
        }
        return output
    }
    func perfectCity(departure: [Double], destination: [Double]) -> Double {
        let depart = departure.first! - departure.last!
        let desti = destination.first! - destination.last!
        let sum = depart + desti
        return sum
    }
    
    //    For a = [1, 4, 2, 1, 7, 6], the output should be
    //    nearestGreater(a) = [1, 4, 1, 2, -1, 4].
    
    
    func nearestGreater(a: [Int]) -> [Int] {
        var output = [Int]()
        for (index,item) in a.enumerated() {
            var leftmin = -1
            for indexB in stride(from: index, through: 0, by: -1) {
                if a[indexB] > item {
                    leftmin = indexB
                    break
                }
            }
            
            var rightmin = -1
            for indexN in index+1..<a.count {
                if a[indexN] > item {
                    rightmin = indexN
                    break
                }
            }
            
            if leftmin == rightmin {
                output.append(-1)
            }
            
            else {
                var max = 0
                if leftmin < 0 {
                    max = rightmin
                } else if rightmin < 0 {
                    max = leftmin
                } else {
                    max = leftmin < rightmin ? leftmin : rightmin
                }
                output.append(max)
            }
        }
        return output
    }
    
    func fareEstimator(ride_time: Int, ride_distance: Int, cost_per_minute: [Double], cost_per_mile: [Double]) -> [Double] {
        var cost = [Double]()
        for (index,costMin) in cost_per_minute.enumerated() {
            let per_mile = cost_per_mile[index]
            let per_minute = costMin
            let costOne = per_minute*Double(ride_time) + per_mile*Double(ride_distance)
            cost.append(costOne)
        }
        return cost
    }
    
    func nextLarger(a: [Int]) -> [Int] {
        var arr = Array(repeating: -1, count: a.count)
        for (index,item) in a.enumerated() {
            print(item)
            let current = item
            for index1 in index+1 ..< a.count {
                let next = a[index1]
                if current < next {
                    arr[index] = next
                    break
                }
            }
        }
        return arr
    }
    
    // simplifyPath(path) = "/home/a/b/c".
    
    func simplifyPath(path: String) -> String {
        var path = path
        if path.hasSuffix("/") {
            path.removeLast()
        }
        path = path.replacingOccurrences(of: "//", with: "")
        //        path = path.replacingOccurrences(of: "../", with: "")
        //        path = path.1`    `replacingOccurrences(of: "./", with: "")
        if path.contains("..") {
            let index = path.range(of: "..")
            print(index)
        }
        return path
    }
    func amendTheSentence(s: String) -> String {
        let strArr = Array(s)
        var newStr = ""
        var prev = ""
        
        for char in strArr {
            if char.isUppercase {
                newStr.append(prev)
                if !newStr.isEmpty { newStr.append(" ")}
                prev = String(char)
            } else {
                prev.append(char)
            }
        }
        newStr.append(prev)
        return newStr.lowercased()
    }
    func firstNotRepeatingCharacter(s: String) -> Character {
        if s.count < 1 {
            return "_"
        } else if s.count == 1 {
            return s.first!
        }
        
        var dict = [Character:Int]()
        for char in s {
            if let stored = dict[char] {
                dict[char] = stored + 1
            } else {
                dict[char] = 1
            }
        }
        for item in s {
            if let count = dict[item], count == 1 {
                return item
            }
        }
        return "_"
    }
    //    for (int i = 0; i < size; i++)
    //        {
    //            max_ending_here = max_ending_here + a[i];
    //            if (max_so_far < max_ending_here)
    //                max_so_far = max_ending_here;
    //
    //            if (max_ending_here < 0)
    //                max_ending_here = 0;
    //        }
    //        return max_so_far;
    func arrayMaxConsecutiveSum2(inputArray: [Int]) -> Int {
        guard inputArray.first != nil else {
            return 0
        }
        
        return 0
    }
    
    func sumInRange(nums: [Int], queries: [[Int]]) -> Int {
        let modulus = 1_000_000_000 + 7
        
        func sumRange(range: [Int]) -> Int {
            let firstInd = range.first!
            let last = range.last!
            let sum = nums[firstInd...last].reduce(0, +)
            return sum
        }
        var count = 0
        for item in queries {
            count = count + sumRange(range: item)
        }
        let result = count % modulus
        return result >= 0 ? result : result + modulus
    }
    
    func sumOfTwo(a: [Int], b: [Int], v: Int) -> Bool {
        let setA = Set(a)
        for item in setA {
            if b.contains(v - item) {
                return true
            }
        }
        return false
    }
    
    
    func firstDuplicate(a: [Int]) -> Int {
        var a = a
        for i in 0..<a.count {
            if Int(a[abs(a[i]) - 1]) >= 0 {
                a[abs(a[i]) - 1] = -a[abs(a[i]) - 1]
            } else {
                return abs(a[i])
            }
        }
        return -1
        
    }
    
    func superViewAndSuper() {
        let viewA = ViewA()
        
        let viewB = ViewB()
        let viewc = ViewC()
        let viewd = ViewD()
        viewA.addSubview(viewB)
        
        func matchSuper(view1: UIView, view2: UIView) -> Bool {
            //            func getAllSuper(myView: UIView) -> [UIView] {
            //                var myView = myView
            //                while <#condition#> {
            //                    <#code#>
            //                }
            //            }
            var class1: UIView? = view1
            while class1 != nil {
                print(class1)
                var class2: UIView? = view2
                while class2 != nil {
                    if class2 == class1 {
                        return true
                    }
                    class2 = class2?.superview
                }
                class1 = class1?.superview
            }
            return false
        }
        print(matchSuper(view1: viewc, view2: viewd))
        
        return
        
        let user = User(name: "rahul", age: 10)
        print(user.name)
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(user)
            print(data)
            let decod = JSONDecoder()
            let data1 = try decod.decode(User.self, from: data)
            print(data1.name)
        }
        catch {
            print(error)
        }
        return
    }
    
    func findDuplicateString(_ str: String) {
        let str1 = str
        _ = ""
        var index1 = 0
        let input = "Swift Tutorials"
        _ = input[input.index(input.startIndex, offsetBy: 3)]
        while index1 < str1.count {
            let firstS = str1[str.index(str.startIndex, offsetBy: index1)]
            print(firstS)
            index1+=1
        }
        
        
        
        
        //        for (index,item) in str1.enumerated() {
        //            for index2 in index+1..<str1.count {
        //                if item == str1[index2] {
        //                    duplicate.insert(String(item))
        //                }
        //            }
        //        }
        //        print(duplicate)
    }
    
    func selectionSort() {
        var arr = [2,5,6,4,7]
        for index in 0..<arr.count {
            let first = arr[index]
            for index2 in index..<arr.count {
                let second = arr[index2]
                if arr[index2] < first {
                    let temp = first
                    arr[index] = second
                    arr[index2] = temp
                }
            }
        }
        print(arr)
    }
    func bubbleSort() {
        var arr = [2,5,6,4,7]
        for _ in 0..<arr.count {
            for index2 in 0..<arr.count - 1 {
                if arr[index2] > arr[index2+1] {
                    let temp = arr[index2]
                    arr[index2] = arr[index2+1]
                    arr[index2+1] = temp
                }
            }
        }
        print(arr)
        
    }
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        // var output = [Int]()
        // var num2 = num2 // 2,5,6
        nums1 = nums1.dropLast(m)
        nums1.append(contentsOf: nums2)
        for index in 0..<nums1.count {
            for index2 in index..<nums1.count {
                let first = nums1[index]
                let sec = nums1[index2]
                if sec > first {
                    let tmp = first
                    nums1[index] = sec
                    nums1[index2] = tmp
                }
            }
        }
        print(nums1.sorted())
    }
    func climbStairs(_ n: Int) -> Int {
        let n = 4
        if n < 2 {
            return 1
        }
        var step1 = 1
        var step2 = 1
        var result = 0
        for _ in 2...n {
            print(step1,step2)
            result = step1 + step2
            step2 = step1
            step1 = result
        }
        return result
    }
    
    func plusOne(_ digits: [Int]) -> [Int] {
        // 1,2,3
        
        var output = [Int]()
        var carry = 0
        var onetime = 1
        for item in digits.reversed() {
            let sum = item + onetime + carry
            onetime = 0
            let reminder = sum % 10
            carry = sum / 10
            output.insert(reminder, at: 0)
        }
        return digits
    }
    func plusOne1(_ digits: [Int]) -> [Int] {
        var value = 0
        for item in digits {
            value = value * 10 + item
        }
        value += 1 // 124
        var output = [Int]() // [1,2,4]
        while value > 0 {
            let onedigit = value % 10
            value = value/10
            output.insert(onedigit, at: 0)
        }
        return output
    }
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var index = 0
        while index < nums.count {
            if index > 0, nums[index] == nums[index - 1]{
                nums.remove(at: index)
            } else {
                index += 1
            }
        }
        return index
    }
    
    //characters '(', ')', '{', '}', '[' and ']'
    func isValidParentheses(_ s: String) -> Bool {
        var mapPre = [Character: Character]()
        mapPre["("] = ")"
        mapPre["{"] = "}"
        mapPre["["] = "]"
        var stack = [Character]()
        for item in s {
            if mapPre[item] != nil {
                stack.append(item)
                if stack.count > 1 {
                    return false
                }
            } else {
                if let sec = stack.first, mapPre[sec] == item {
                    stack.removeFirst()
                } else {
                    return false
                }
            }
        }
        return stack.isEmpty
    }
    
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard let strsArrOne = strs.first, !strsArrOne.isEmpty else {
            return ""
        }
        var prefixArr = [String]()
        for char in strsArrOne {
            let newStr = (prefixArr.last ?? "") + String(char)
            prefixArr.append(newStr)
            print(prefixArr)
        }
        var currentindex = -1
        mainforLoop: for prefix in prefixArr {
            currentindex += 1
            for oneArr in strs {
                if !oneArr.hasPrefix(prefix) {
                    currentindex -= 1
                    break mainforLoop
                }
            }
        }
        if currentindex > -1 {
            return prefixArr[currentindex]
        }
        return ""
    }
    func reverse(_ x: Int) -> Int {
        var output = x // 123
        var reverse  = 0
        while output != 0  {
            reverse = reverse*10 + output % 10
            output = output / 10
        }
        if reverse > Int32.max || reverse < Int32.min {
            return 0
        }
        return reverse
    }
    func isPalindrom(_ s: String) -> Bool {
        let stringArr = Array(s)
        if stringArr.count < 3 {
            return true
        }
        for index in 0...stringArr.count/2 {
            let firstStr = stringArr[index]
            let secondstr = stringArr[stringArr.count - index - 1]
            if firstStr != secondstr {
                return false
            }
        }
        return true
    }
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let output = (nums1 + nums2).sorted()
        var index = 0
        var sum = 0
        
        if output.count > 2 {
            index = (output.count/2)
            if output.count % 2 == 0 {
                sum = output[index] + output[index-1]
                return Double(sum)/2
            }
            return Double(output[index])
        }
        if output.count == 1 {
            sum = output[index]
            return Double(sum)
            
        }
        sum = output[index] + output[index+1]
        return Double(sum)/2
        
        
    }
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        let strArr = [String]()
        
        for (index,onechar) in s.enumerated() {
            print(index,onechar)
        }
        print(strArr)
        var output = ""
        for subStr in strArr {
            let setStr = Set(subStr)
            if setStr.count == subStr.count {
                if subStr.count > output.count {
                    output = subStr
                }
            }
        }
        return output.count
        //        var characterDict = [Character:Int]()
        //        var maxLength = 0
        //        var lastRepeatPos = -1
        //        var i = 0
        //
        //        for c in s {
        //            if (characterDict[c] != nil) && (characterDict[c]! > lastRepeatPos) {
        //                lastRepeatPos = characterDict[c]!
        //            }
        //
        //            maxLength = max(i - lastRepeatPos, maxLength)
        //            characterDict[c] = i
        //            i += 1
        //        }
        //
        //        return maxLength
    }
    //    Symbol       Value
    //    I             1
    //    V             5
    //    X             10
    //    L             50
    //    C             100
    //    D             500
    //    M             1000
    
    func romanToInt(_ s: String) -> Int {
        func charToRoman(_ char: Character) -> Int {
            let char = char
            switch char {
            case "I":
                return 1
            case "V":
                return 5
            case "X":
                return 10
            case "L":
                return 50
            case "C":
                return 100
            case "D":
                return 500
            case "M":
                return 1000
            default:
                return 0
            }
        }
        let roman = [Character](s)
        var result = 0
        
        if let first = roman.first {
            result = charToRoman(first)
        }
        
        for index in 1..<roman.count {
            let current = charToRoman(roman[index])
            let prev = charToRoman(roman[index - 1])
            if current <= prev {
                result = result + current
            } else {
                result = result + current - prev*2
            }
        }
        
        return result
        
        
    }
    //    To convert CDA,
    //    3*26*26 + 4*26 + 1
    // index*(value,pow,index-1)
    //    public int titleToNumber(String s) {
    //            char[] chars = s.toCharArray();
    //            int res = 0;
    //            for (int i = 0; i < chars.length; i++){
    //                res = res * 26 + chars[i] - 'A' + 1;
    //            }
    //            return res;
    //        }
    func titleToNumber(_ s: String) -> Int {
        func getInteger(_ char: Character) -> Int {
            let tempint = char.asciiValue
            return Int(tempint ?? 0)
        }
        var result = 0
        for (_, item) in s.enumerated() {
            result = result*26 + getInteger(item) - 64
        }
        return result
    }
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProf = 0
        
        for (index,_) in prices.enumerated() {
            
            if index > 0 {
                let profitloss = prices[index] - prices[index - 1]
                if profitloss > 0 {
                    maxProf += profitloss
                }
            }
            
        }
        return maxProf
    }
    
    func moveZeroes(_ nums: inout [Int]) {
        let zeros = nums.count
        var output = [Int]()
        //        for item in nums {
        //            if item != 0 {
        //                output.append(item)
        //            } else {
        //                zeros += 1
        //            }
        //        }
        nums = nums.filter({$0 != 0})
        for _ in nums.count-1..<zeros-1 {
            output.append(0)
        }
        print(nums)
    }
    
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        var myString = s
        for item in t {
            if myString.contains(item) {
                if let getIndex = myString.firstIndex(of: item) {
                    myString.remove(at: getIndex)
                } else {
                    return false
                }
            } else {
                return false
            }
        }
        return true
    }
    
    func majorityElement(_ nums: [Int]) -> Int {
        var numDict = [Int: Int]()
        for item in nums {
            if let count = numDict[item] {
                numDict[item] = count + 1
            } else {
                numDict[item] = 1
            }
        }
        var maxNumDict = (key: 0, val: 0)
        for (key,value) in numDict {
            print(key,value)
            if maxNumDict.val < value {
                maxNumDict = (key, value)
            }
        }
        return maxNumDict.key
    }
    
    func singleNumber(_ nums: [Int]) -> Int {
        var output = Set<Int>()
        for item in nums {
            if output.contains(item) {
                output.remove(item)
            } else {
                output.insert(item)
            }
        }
        return output.first ?? 0
    }
    func reverseStr(_ str: inout String){
        var myString = ""
        for item in str {
            myString =  String(item) + myString
        }
        print(myString)
    }
    func reverse(_ s: String) -> String {
        var str = ""
        //.characters gives the character view of the string passed. You can think of it as array of characters.
        for character in s {
            str = "\(character)" + str
        }
        return str
    }
    func reverseString(_ s: inout [Character]) {
        var output = [Character]()
        for item in s {
            output = [item] + output
        }
        s = output
        print(s)
        
    }
    func sortBubble() {
        var numbers = [1, 12, 5, 111, 200, 1000, 10]
        
        for index in 0..<numbers.count {
            //    print(index)
            for index2 in index..<numbers.count {
                //                print(index2)
                if numbers[index] > numbers[index2] {
                    let tmp = numbers[index]
                    numbers[index] = numbers[index2]
                    numbers[index2] = tmp
                }
            }
        }
        print(numbers)
    }
    
}
