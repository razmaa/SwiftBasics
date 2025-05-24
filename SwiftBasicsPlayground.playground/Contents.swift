

public func isPalindrome(input: String) -> Bool {
    let lowercaseInput = input.lowercased()
    let cleanedInput = lowercaseInput.filter { $0.isLetter || $0.isNumber }
    guard cleanedInput.count > 1 else { return false }
    
    return cleanedInput == String(cleanedInput.reversed())
}

print("Answers for palindromes:")
print(isPalindrome(input: "racecar"))
print(isPalindrome(input: "hello"))
print(isPalindrome(input: "A man, named Nika, will be great developer::q"))
print(isPalindrome(input: " "))
print(isPalindrome(input: "a"))
print(isPalindrome(input: "No 'x' in Nixon"))

print("")

public func isBalancedParentheses(input: String) -> Bool {
    var count = 0
    
    for char in input {
        if char == "(" {
            count += 1
        } else if char == ")" {
            count -= 1
        }
        
        if count < 0 {
            return false
        }
    }
    
    return count == 0
}

print("Answers for balanced parentheses:")
print(isBalancedParentheses(input: "()"))
print(isBalancedParentheses(input: "(())"))
print(isBalancedParentheses(input: "(()))"))
print(isBalancedParentheses(input: "())("))
