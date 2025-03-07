//
//  Programs.swift
//  To-Do-List
//
//  Created by Mobile2 on 06/03/25.
//

import UIKit
import Foundation

// This are some important programs to undestand

class LogicProgram {
    
    // 1. Reverse a String in Swift
    func reverse(_ s: String) -> String {
        var str = ""
        for character in s {
            str = "\(character)" + str
        }
        return str
    }
    
    // print(reverse("BASIVI"))
    
    // 2. Check if a String is a Palindrome
    func isPalindrome(_ s: String) -> Bool {
        let characters = Array(s.lowercased())
        var initialIndex = 0
        var finalIndex = characters.count - 1
        
        while initialIndex < finalIndex {
            if characters[initialIndex] != characters[finalIndex] {
                return false
            }
            initialIndex += 1
            finalIndex -= 1
        }
        return true
    }
    
    // print(isPalindrome("ABABA"))
    
    // 3. Remove Duplicates from a String
    func removeDuplicates(from string: String) -> String {
        var uniqueCharacters = ""
        for char in string {
            if !uniqueCharacters.contains(char) {
                uniqueCharacters.append(char)
            }
        }
        return uniqueCharacters
    }
    
    // print(removeDuplicates(from: "BASIVIAA"))
    
    // 4. First Non Repeated Character
    func nonRepeat(_ input: String) -> String {
        for char in input {
            if input.firstIndex(of: char) == input.lastIndex(of: char) {
                return "\(char)"
            }
        }
        return ""
    }
    
    //print(nonRepeat("BasasfB"))
    
    func firstNonRepeatedCharacter(in string: String) -> String {
        var characterCounts = [Character: Int]()
        
        for character in string {
            characterCounts[character, default: 0] += 1
        }
        
        for character in string {
            if characterCounts[character] == 1 {
                return "\(character)"
            }
        }
        
        return ""
    }
    
    //print(firstNonRepeatedCharacter(in: "BASIASIBF"))
    
    // 5. Check the Anagram
    func checkAnagram(str1: String, str2: String) -> Bool {
        // Check they have equal count
        guard str1.count == str2.count else {
            return false
        }
        
        // Lowercase first then use sorted() function, it will return an array of characters sorted
        if str1.lowercased().sorted() == str2.lowercased().sorted() {
            return true
        }
        
        return false
    }
    
    //print(checkAnagram(str1: "nba", str2: "abn"))
    
    func checkAnagram1(str1: String, str2: String) -> Bool {
        var dict: [Character: Int] = [:]
        
        for char in str1 {
            dict[char, default: 0] += 1
        }
        
        for char in str2 {
            dict[char, default: 0] -= 1
        }
        
        for (_, value) in dict {
            if value != 0 {
                // If value is not equal to zero, that means the strings don't contain the same characters
                return false
            }
        }
        
        return true
    }
    
    // 6. Check the Length Of Longest Substring
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var start = 0
        var maxLength = 0
        var charToIndex = [Character: Int]()
        
        for (i, char) in s.enumerated() {
            if let index = charToIndex[char] {
                // If the character is already present in the charToIndex dictionary, move the start
                // index to the next of the previous occurrence of the character.
                start = max(start, index + 1)
            }
            
            charToIndex[char] = i
            maxLength = max(maxLength, i - start + 1)
        }
        
        return maxLength
    }
    
    // 7. Get reverse number
    func getReverseNumber(value: Int) -> Int {
        var x = value
        var result = 0
        while (x != 0) {
            result = result * 10 + x % 10
            x = x / 10
        }
        return result
    }
    
    // 8. Return Most Common Character
    func returnMostCommonCharacter(string: String) -> Character {
        var characters = Array(string.lowercased())
        var dict = Dictionary<Character, Int>()
        var maxCharacter = characters[0]
        var maxCount = 0
        
        for character in characters {
            if let seenCharCount = dict[character] {
                dict[character] = seenCharCount + 1
                if dict[character]! > maxCount {
                    maxCharacter = character
                    maxCount = dict[character]!
                }
            } else {
                dict[character] = 1
            }
        }
        return maxCharacter
    }
    
    // 9. Longest Common Prefix
    class LongestCommonPrefix {
        func longestCommonPrefix(_ strs: [String]) -> String {
            var key = ""
            let tem = Array(strs[0])
            for i in 0..<tem.count {
                key.append(tem[i])
                for item in strs {
                    if !item.hasPrefix(key) {
                        return String(key.dropLast(1))
                    }
                }
            }
            return key
        }
    }
    
    // 11. Find the first unmatched character from "Hello".

    func firstUnmatchedCharacter(in str: String) -> Character? {
        var charCount: [Character: Int] = [:]

        // Count occurrences of each character
        for char in str {
            charCount[char, default: 0] += 1
        }

        // Find the first character with count 1
        for char in str {
            if charCount[char] == 1 {
                return char
            }
        }

        return nil
    }

    // 12. Find the missing sequence number from Array [1,2,6,8,9].

    func findMissingNumbers(from array: [Int]) -> [Int] {
        let minVal = array.min() ?? 0
        let maxVal = array.max() ?? 0
        
        let fullRange = Set(minVal...maxVal)
        let givenNumbers = Set(array)
        
        let missingNumbers = fullRange.subtracting(givenNumbers).sorted()
        return missingNumbers
    }

        
    // 13. Sort Array in Ascending/Decending Order

    var input_Arr = [1,2,3,4,5,4,3,2,1]

    func sortArray(_ array: inout [Int]) -> [Int] {
                
        for i in 0..<array.count {
            
            for j in 1..<array.count {
                
                if array[j-1] < array[i] {
                    
                    let temp = array[j-1]
                    
                    array[j-1] = array[i]
                    
                    array[i] = temp
                }
                
            }
        }
        
        return array
    }
    
    // 14. Write Generic function to reverse the arr
    
    func reverseGenericArray<T>(array: inout [T]) -> [T] {
        
        var n = array.count
        
        for i in 0..<n/2 {
            
            let temp = array[i]
            
            array[i] = array[n - i - 1]
            
            array[n - i - 1] = temp
            
        }
        
        return array
    }
}

// 10. Write Generic Class
class MyGenericClass<Value> {
    var value: Value
    
    init(_ value: Value) {
        self.value = value
    }

    convenience init?(_ value: Value?) {
        switch value {
        case .some(let unwrapped):
            self.init(unwrapped)
        case .none:
            return nil
        }
    }
}

extension MyGenericClass where Value == Int {
    func doSomething() {}
}

// Optional Generic inferring
var num: Int? = 12
let myClass = MyGenericClass(num)  // => Optional MyGenericClass<Int>
// myClass?.doSomething()

// Regular Generic inferring
var num2: Int = 10
let myClass2 = MyGenericClass(num2)  // => Non-Optional MyGenericClass<Int>
//myClass2.doSomething()

// Regular Generic with Optional value
var num3: Int? = 15
let myClass3 = MyGenericClass<Optional<Int>>(num3)  // Non-Optional MyGenericClass<Optional<Int>>

