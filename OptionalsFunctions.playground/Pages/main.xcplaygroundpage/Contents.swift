/*: Outline
 
 
 # Optionals & Functions
 
 ### Readings associated with this lab
 
 * [Optionals](https://github.com/learn-co-curriculum/swift-optionals-readme)
 * [Optionals & Functions](https://github.com/learn-co-curriculum/swift-optionalFunc-readme)
 

 */
/*: question1
 ### 1. What is the type of the variable `petName` declared below? What is its value?
 */
var petName = "Scooter the Turtle 🐢"

//Ans: 'petName' is of the type 'String'.  It's value is "Scooter the Turtle 🐢"
/*: question2
 ### 2. What is the type of the variable `otherPetName` declared below? What is its value?
 */
var otherPetName: String?

//otherPetName is of the type 'String?'.  Its value is 'nil'.





/*: question3
 ### 3. What is the _current value_ of `otherPetName`?
 */
otherPetName
//current value of 'otherPetName' is nil

/*: question4
 ### 4. What is the type of the variable `thirdPetName` declared below? What is its value?
 */
var thirdPetName: String? = nil
// type of 'thirdPetName' is 'String?'.  Its value is nil.
/*: question5
 ### 5. Assign a value to `thirdPetName`. What type of values can you assign to `thirdPetName`? After assigning a value, what is its type?
 */
thirdPetName = "Spot"
// Any value of type 'String' can be assigned to thirdPetName.  After assigning a value, the type is still 'String?'.
/*: question6
 ### 6. Print `thirdPetName` to the console using Swift's `print()` function. What do you expect to see in the console?
 */
print(thirdPetName)
// Expect to see **Optional("Spot") in console.
/*: question7
 ### 7. Write an if statement that will print _just_ the value of `thirdPetName` to the console, without all the **Optional(...)** stuff.
 */
if let name = thirdPetName {
    print(name)
}
/*: question8
 ### 8. Write a function called `printPetName` that takes a pet's name as a parameter. It should print the pet's name if the pet name exists, or "There is no pet name!" if the pet's name does not exist.
 */
func printPetName(petName: String?) {
    if let name = petName {
        print(name)
    } else {
        print("There is no pet name!")
    }
}
/*: question9
 ### 9. Call `printPetName` with `thirdPetName`. Then call it again with `otherPetName`. What do you expect to see in the console?
 */
printPetName(petName: thirdPetName)
printPetName(petName: otherPetName)
// Console will print "Spot" for thirdPetName and print "There is no pet name!" for otherPetName
/*: question10
 ### 10. Write a function called `minimum`. `minimum` should take a list of `Int`s and return the minimum one in the bunch. For now, don't deal with the possibility of an empty array; assume the array passed to `minimum` always has one item. What should the return type of `minimum` be?
 */
func minimum(numbers: [Int]) -> Int {
    var min = numbers[0]
    let rest = numbers.dropFirst()
    for num in rest {
        if num < min {
            min = num
        }
    }
    return min
}
// Return type of minimum should be of type 'Int'
/*: question11
 ### 11. Call your `minimum` function with the following array. What value do you expect to get back? What value did you get back?
 */
let values1 = [4, 12, 3, 2, 9, 14, 11]
minimum(numbers: values1)
// Expect console to return '2'
/*: question12
 ### 12. Call your `minimum` function with the following empty array. What happens when you call your function?
 */
let values2: [Int] = []
//minimum(numbers: values2)

// function minimum will return an error since the array cannot be nil.
/*: question13
 ### 13. Write a new function, `maybeMinimum`. It should handle cases in which the array passed to it is empty. If the array is empty, `nil` should be returned; otherwise, the smallest `Int` in the array should be returned. What should the return type of `maybeMinimum` be? (Note: So far, you haven't seen anything other than optional `String`s. Do you expect other optional types, such as `Int`s, to be handled differently?)
 */

 func maybeMinimum(numbers: [Int]) ->  Int? {
    if !numbers.isEmpty {
        var min = numbers[0]
        let rest = numbers.dropFirst()
        for num in rest {
            if num < min {
                min = num
            }
        }
        return min
    } else {
        return nil
    }
}

// Optional Int does not seem to function the same way as optional string
/*: question14
 ### 14. Call `maybeMinum` with `values1`. What do you expect the return value to be?
 */
maybeMinimum(numbers: values1)
// Return value will be **Optional(2)** since the return type is optional
/*: question15
 ### 15. Call `maybeMinum` with `values2`, an empty array. What do you expect the return value to be?
 */
maybeMinimum(numbers: values2)
// Return value will be nil.
//: Click [here](https://github.com/learn-co-curriculum/swift-OptionalsNFunctions-lab/blob/solution/OptionalsFunctions.playground/Pages/solution.xcplaygroundpage/Contents.swift) to see the solution on GitHub.
