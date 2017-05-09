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

// String, it's value is "Scooter the Turtle 🐢".

/*: question2
 ### 2. What is the type of the variable `otherPetName` declared below? What is its value?
 */
var otherPetName: String?

// Optional String, it's value is currently nil.

/*: question3
 ### 3. What is the _current value_ of `otherPetName`?
 */
// It's value is currently nil.

/*: question4
 ### 4. What is the type of the variable `thirdPetName` declared below? What is its value?
 */
var thirdPetName: String? = nil

// Optional String, it's value is currently nil.

/*: question5
 ### 5. Assign a value to `thirdPetName`. What type of values can you assign to `thirdPetName`? After assigning a value, what is its type?
 */
thirdPetName = "Agador"

// Strings, it's type is still an Optional String

/*: question6
 ### 6. Print `thirdPetName` to the console using Swift's `print()` function. What do you expect to see in the console?
 */
print(thirdPetName)

// "Optional("Agador")"

/*: question7
 ### 7. Write an if statement that will print _just_ the value of `thirdPetName` to the console, without all the **Optional(...)** stuff.
 */
if let thirdPetName = thirdPetName {
    print(thirdPetName)
}

/*: question8
 ### 8. Write a function called `printPetName` that takes a pet's name as a parameter. It should print the pet's name if the pet name exists, or "There is no pet name!" if the pet's name does not exist.
 */
func printPetName(name: String?) {
    if let name = name {
        print(name)
    } else {
        print("There is no pet name!")
    }
}

/*: question9
 ### 9. Call `printPetName` with `thirdPetName`. Then call it again with `otherPetName`. What do you expect to see in the console?
 */
printPetName(name: thirdPetName)

printPetName(name: otherPetName)

// "Agador", then "There is no pet name!"

/*: question10
 ### 10. Write a function called `minimum`. `minimum` should take a list of `Int`s and return the minimum one in the bunch. For now, don't deal with the possibility of an empty array; assume the array passed to `minimum` always has one item. What should the return type of `minimum` be?
 */
func minimum(items: [Int]) -> Int? {
    return items.min()
}

// Was determining a mininum ever covered? I can't find any lesson that discusses it. I think it should be an Integer but I'm getting errors in the console that it's an Optional. If I remove the return and just have the function print it prints "Optional(2)" for question 11 below so clearly it IS an Optional but I don't understand why. For question 12 it even prints "nil" though I would expect it to give me an error for not dealing with the nil possibility.
/*: question11
 ### 11. Call your `minimum` function with the following array. What value do you expect to get back? What value did you get back?
 */
let values1 = [4, 12, 3, 2, 9, 14, 11]
minimum(items: values1)

// I expect it to be "2".
/*: question12
 ### 12. Call your `minimum` function with the following empty array. What happens when you call your function?
 */
let values2: [Int] = []
minimum(items: values2)

//I get "nil", but again, I don't understand why.

/*: question13
 ### 13. Write a new function, `maybeMinimum`. It should handle cases in which the array passed to it is empty. If the array is empty, `nil` should be returned; otherwise, the smallest `Int` in the array should be returned. What should the return type of `maybeMinimum` be? (Note: So far, you haven't seen anything other than optional `String`s. Do you expect other optional types, such as `Int`s, to be handled differently?)
 */
func maybeMinimum(items: [Int]) -> Int? {
    if !items.isEmpty {
        return items.min()
    }
    return nil
}

// The previous questions have shown me that the return type should apparently be "Int?". I would not expect other optional types to be handled differently, but I suspect they probably are.

/*: question14
 ### 14. Call `maybeMinum` with `values1`. What do you expect the return value to be?
 */
maybeMinimum(items: values1)

// I expect it to be "2".

/*: question15
 ### 15. Call `maybeMinum` with `values2`, an empty array. What do you expect the return value to be?
 */
maybeMinimum(items: values2)

// I expect it to be nil.

//: Click [here](https://github.com/learn-co-curriculum/swift-OptionalsNFunctions-lab/blob/solution/OptionalsFunctions.playground/Pages/solution.xcplaygroundpage/Contents.swift) to see the solution on GitHub.
