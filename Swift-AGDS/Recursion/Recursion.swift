//
//  Recursion.swift
//  Swift-AGDS
//
//  Created by Derrick Park on 2022-03-02.
//

import Foundation


func factorial(n: Int) -> Int {
  if n == 0 || n == 1 {
    return 1
  }
  return n * factorial(n: n - 1)
}


// 1. power(base, exponent): base^exponent
// assume exponent >= 0
func power(base: Int, exponent: Int) -> Int {
  // base case
  if exponent == 0 {
    return 1
  }
  // recursive case
  return power(base: base, exponent: exponent - 1) * base
}

// 2. isPalindrome(word): checks if a word is palindrome
func isPalindrome(_ word: String) -> Bool { // self-similar?
  // base case
  if word.count <= 1 {
    return true
  }
  
  // recursive case
  if word[0] == word[word.count - 1] {
    return isPalindrome(word[1, word.count - 1])
  }
  return false
}

// 3. printBinary(n): prints binary form of the given int n
// print("Hello", terminator: "")  // print without newline (ends with an empty string)
func printBinary(_ n: Int) {
  // base case
  if (n < 0) {
    print("-", terminator: "")
    printBinary(-n)
  }
  if n <= 1 {
    print(n, terminator: "")
    return
  }
  // recursive case
  printBinary(n / 2)
  print(n % 2, terminator: "")
}

// 4. reverseLines
// - Print all lines in reverse order (recursively) from a text file
// - You can change the function header if you want
func reverseLines(_ line: Int = 0) {
  let contents = try! String(contentsOfFile: "/Users/park/Desktop/Swift-AGDS/Swift-AGDS/Recursion/story.txt")
  let lines = contents.split(separator: "\n")
  if line < lines.count {
    reverseLines(line + 1)
    print(lines[line])
  }
}