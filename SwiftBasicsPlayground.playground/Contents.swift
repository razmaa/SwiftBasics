

public func isPalindrome(input: String) -> Bool {
    let lowercaseInput = input.lowercased()
    let cleanedInput = lowercaseInput.filter { $0.isLetter || $0.isNumber }
    guard cleanedInput.count > 1 else { return false }
    
    return cleanedInput == String(cleanedInput.reversed())
}

print(isPalindrome(input: "racecar"))
print(isPalindrome(input: "hello"))
print(isPalindrome(input: "A man, named Nika, will be great developer::q"))
print(isPalindrome(input: " "))
print(isPalindrome(input: "a"))
print(isPalindrome(input: "No 'x' in Nixon"))
