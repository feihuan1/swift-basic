import Foundation

//string is a sequence of characters, such as letters, numbers, or symbols, that represent text

let s: String = "hello"
let s2 = "hello"

//count: Returns the number of characters in the string.
let str = "Hello, World!"
print(str.count)

//isEmpty: Returns a Boolean value indicating whether the string is empty.
let emptyStr = ""
print(emptyStr.isEmpty)

//append(_:): Appends a given character to the string.
var str2 = "Hello"
str2.append(", World!")
print(str2)

//contains(_:): Checks whether the string contains a given substring.
let str3 = "Hello, World!"
print(str3.contains("World")) // Output: true

//reversed(): Returns a new string with the characters in reverse order.
let str11 = "Hello, World!"
print(String(str11.reversed())) // Output: "!dlroW ,olleH"


//hasPrefix(_:): Checks whether the string starts with a given prefix.
let str4 = "Hello, World!"
print(str4.hasPrefix("Hello")) // Output: true

//hasSuffix(_:): Checks whether the string ends with a given suffix.
let str5 = "Hello, World!"
print(str5.hasPrefix("Hello")) // Output: true

//lowercased(): Returns a new string with all characters converted to lowercase.
let str6 = "Hello, World!"
print(str6.lowercased()) // Output: "hello, world!"

//uppercased(): Returns a new string÷ with all characters converted to uppercase.
let str7 = "Hello, World!"
print(str7.uppercased()) // Output: "HELLO, WORLD!"

//split(separator:): Splits the string into an array of substrings separated by a given separator.
let str9 = "Hello, World!"
let parts = str9.split(separator: ",")
print(parts) // Output: ["Hello", " World!"]

//The replacingOccurrences() method replaces each matching occurrence of the old character/text in the string with the new character/text
var strb = "bat ball"
// replace b with c
print(strb.replacingOccurrences(of: "b",with: "c"))



