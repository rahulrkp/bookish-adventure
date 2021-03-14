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

    @objc func buttonClick() {
        
    }
    func parseAndAddOne(_ s: String) -> Int {
        return Int(s, radix: 10)! + 1
    }
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(parseAndAddOne("hello10"))
//        let values: [Any] = [1, 2, "Fish"]
//        print(#file)
//        print(#line)
//        print(#function)
        view.backgroundColor = .white

////        let linkvc = EnumViewController()
//        self.navigationController?.pushViewController(linkvc, animated: true)
//        let linkvc = LinksViewController()
//        self.navigationController?.pushViewController(linkvc, animated: true)
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
//        let prices = [7,1,5,3,6,4] //7
//        print(maxProfit(prices))
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
        print(firstDuplicate(a: [2, 1, 3, 5, 3, 2]))
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
        let path = "/home/a/./x/../b//c/"
        print(simplifyPath(path: path))
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
        guard var max = inputArray.first else {
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
        var str1 = str
        var duplicateStr = ""
        var index1 = 0
        let input = "Swift Tutorials"
        let char = input[input.index(input.startIndex, offsetBy: 3)]
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
        for index in 0..<arr.count {
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
        if n < 2 {
            return 1
        }
        var step1 = 1
        var step2 = 1
        var result = 0
        for item in 2...n {
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
            if let oneelement = mapPre[item] {
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
        guard var strsArrOne = strs.first, !strsArrOne.isEmpty else {
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
    func longestPalindrome(_ s: String) -> String { // incomplete
        var arrayString = [String]()
        for item in s {
            let subArr = s.components(separatedBy: String(item))
            for subOne in subArr {
                if ((subArr.first?.isEmpty) != nil) {
                    arrayString.append(String(item) + subOne)
                }
                else {
                    arrayString.append(subOne + String(item))
                }
            }
        }
        print(Set(arrayString))
        return s
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
        
        var strArr = [String]()
        
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
        for (index, item) in s.enumerated() {
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
        var zeros = nums.count
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
        //This will help you understand the logic.
        //!+""
        //p+!
        //l+p! ... goes this way
        print ( str)
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
