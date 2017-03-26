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



// Type of variable: String -> value = "Scooter the Turtle 🐢"




/*: question2
 ### 2. What is the type of the variable `otherPetName` declared below? What is its value?
 */
var otherPetName: String?



// Type of variable: String? (optional) -> value = nil



/*: question3
 ### 3. What is the _current value_ of `otherPetName`?
 */


// Current value: nil





/*: question4
 ### 4. What is the type of the variable `thirdPetName` declared below? What is its value?
 */
var thirdPetName: String? = nil


// Type of variable: String? (optional) -> value = nill






/*: question5
 ### 5. Assign a value to `thirdPetName`. What type of values can you assign to `thirdPetName`? After assigning a value, what is its type?
 */
thirdPetName = "Alex 🦑"

// Can assign values of type String

// Type after assigning value: still String? because hasn't been unwrapped








/*: question6
 ### 6. Print `thirdPetName` to the console using Swift's `print()` function. What do you expect to see in the console?
 */
print(thirdPetName)

// Expected: Optional("Alex 🦑")








/*: question7
 ### 7. Write an if statement that will print _just_ the value of `thirdPetName` to the console, without all the **Optional(...)** stuff.
 */
if let thirdPetName = thirdPetName {
    print(thirdPetName)
}








/*: question8
 ### 8. Write a function called `printPetName` that takes a pet's name as a parameter. It should print the pet's name if the pet name exists, or "There is no pet name!" if the pet's name does not exist.
 */
func printPetName(petName: String?) {
    if let petName = petName {
        print(petName)
    } else {
        print("There is no pet name!")
    }
}








/*: question9
 ### 9. Call `printPetName` with `thirdPetName`. Then call it again with `otherPetName`. What do you expect to see in the console?
 */
printPetName(petName: thirdPetName) // Expected: "Alex 🦑"
printPetName(petName: otherPetName) // Expected: "There is no pet name!" -> this variable has value of nil currently








/*: question10
 ### 10. Write a function called `minimum`. `minimum` should take a list of `Int`s and return the minimum one in the bunch. For now, don't deal with the possibility of an empty array; assume the array passed to `minimum` always has one item. What should the return type of `minimum` be?
 */
func minimum(list: [Int]) -> Int {
    
    var min = list[0] // Start with first Int in list
    
    list.dropFirst() // Remove first Int so we can check it against the rest
    
    for num in list {
        if ( num < min ) {
            min = num
        }
    }
    
    return min
    
}

// Return type should be Int since we're returning the minimum Int value in the [Int] array








/*: question11
 ### 11. Call your `minimum` function with the following array. What value do you expect to get back? What value did you get back?
 */
let values1 = [4, 12, 3, 2, 9, 14, 11]

print(minimum(list: values1))

// Expected: 2
// Actual: 2






/*: question12
 ### 12. Call your `minimum` function with the following empty array. What happens when you call your function?
 */
let values2: [Int] = []

//minimum(values2)

// Error because minimum function isn't handling cases where an empty array is provided






/*: question13
 ### 13. Write a new function, `maybeMinimum`. It should handle cases in which the array passed to it is empty. If the array is empty, `nil` should be returned; otherwise, the smallest `Int` in the array should be returned. What should the return type of `maybeMinimum` be? (Note: So far, you haven't seen anything other than optional `String`s. Do you expect other optional types, such as `Int`s, to be handled differently?)
 */
func maybeMinimum(list: [Int]) -> Int? {
    
    if !list.isEmpty {
        return minimum(list: list) // Why not re-use code from above? 😏
    }
    
    return nil
    
}








/*: question14
 ### 14. Call `maybeMinum` with `values1`. What do you expect the return value to be?
 */
print(maybeMinimum(list: values1))

// Return type should be Int? because maybeMinimum returns an optional type of Int?






/*: question15
 ### 15. Call `maybeMinum` with `values2`, an empty array. What do you expect the return value to be?
 */
print(maybeMinimum(list: values2))

// Return type should be nil since maybeMinimum is designed to return nil if an empty array of [Int] is provided






//: Click [here](https://github.com/learn-co-curriculum/swift-OptionalsNFunctions-lab/blob/solution/OptionalsFunctions.playground/Pages/solution.xcplaygroundpage/Contents.swift) to see the solution on GitHub.
