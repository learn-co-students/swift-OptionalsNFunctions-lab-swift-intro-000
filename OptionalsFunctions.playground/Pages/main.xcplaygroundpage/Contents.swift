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

// The type is string and the value is "Scooter the Turtle 🐢"
/*: question2
 ### 2. What is the type of the variable `otherPetName` declared below? What is its value?
 */
var otherPetName: String?

// The type is optional string and the value is nil
/*: question3
 ### 3. What is the _current value_ of `otherPetName`?
 */
// value of nil
/*: question4
 ### 4. What is the type of the variable `thirdPetName` declared below? What is its value?
 */
var thirdPetName: String? = nil

// The type is optional string and the value is nil
/*: question5
 ### 5. Assign a value to `thirdPetName`. What type of values can you assign to `thirdPetName`? After assigning a value, what is its type?
 */
thirdPetName = "Sadie"

// The type is still optional string

/*: question6
 ### 6. Print `thirdPetName` to the console using Swift's `print()` function. What do you expect to see in the console?
 */
print(thirdPetName)

// prints "Optional ("Sadie")
/*: question7
 ### 7. Write an if statement that will print _just_ the value of `thirdPetName` to the console, without all the **Optional(...)** stuff.
 */
if let name = thirdPetName {
    print(thirdPetName!)
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
/*: question10
 ### 10. Write a function called `minimum`. `minimum` should take a list of `Int`s and return the minimum one in the bunch. For now, don't deal with the possibility of an empty array; assume the array passed to `minimum` always has one item. What should the return type of `minimum` be?
 */
func minumum(listOfInts: [Int]) -> Int {
    var min = listOfInts[0]
    let rest = listOfInts.dropFirst()
    for item in rest {
        if item < min {
            min = item
        }
    }
    return min
}
/*: question11
 ### 11. Call your `minimum` function with the following array. What value do you expect to get back? What value did you get back?
 */
let values1 = [4, 12, 3, 2, 9, 14, 11]

minumum(listOfInts: values1)

// returns 2
/*: question12
 ### 12. Call your `minimum` function with the following empty array. What happens when you call your function?
 */
let values2: [Int] = []

// minumum(listOfInts: values2)
// calling minimum with an empty array will result in an "Index out of range" error. Uncomment above line of code to see error.
/*: question13
 ### 13. Write a new function, `maybeMinimum`. It should handle cases in which the array passed to it is empty. If the array is empty, `nil` should be returned; otherwise, the smallest `Int` in the array should be returned. What should the return type of `maybeMinimum` be? (Note: So far, you haven't seen anything other than optional `String`s. Do you expect other optional types, such as `Int`s, to be handled differently?)
 */
func maybeMinimum(listOfInts: [Int?]) -> Int? {
    if listOfInts.isEmpty {
        return nil
    }
    
    var min = listOfInts[0]
    let rest = listOfInts.dropFirst()
    for item in rest {
        if item! < min! {
            min = item
        }
    }
    return min
}

/*: question14
 ### 14. Call `maybeMinum` with `values1`. What do you expect the return value to be?
 */
maybeMinimum(listOfInts: values1)
/*: question15
 ### 15. Call `maybeMinum` with `values2`, an empty array. What do you expect the return value to be?
 */
maybeMinimum(listOfInts: values2)
//: Click [here](https://github.com/learn-co-curriculum/swift-OptionalsNFunctions-lab/blob/solution/OptionalsFunctions.playground/Pages/solution.xcplaygroundpage/Contents.swift) to see the solution on GitHub.
