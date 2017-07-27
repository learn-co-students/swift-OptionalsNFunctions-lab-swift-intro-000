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

// This is a String variable with value shown in double quotes.








/*: question2
 ### 2. What is the type of the variable `otherPetName` declared below? What is its value?
 */
var otherPetName: String?

// This is an Optional String variable with value nil.





/*: question3
 ### 3. What is the _current value_ of `otherPetName`?
 */
// otherPetName = nil







/*: question4
 ### 4. What is the type of the variable `thirdPetName` declared below? What is its value?
 */
var thirdPetName: String? = nil

// Optional String, value nil







/*: question5
 ### 5. Assign a value to `thirdPetName`. What type of values can you assign to `thirdPetName`? After assigning a value, what is its type?
 */
thirdPetName = "Smokey"

// String values or nil can be assigned to thirdPetName. It is an Optional String.








/*: question6
 ### 6. Print `thirdPetName` to the console using Swift's `print()` function. What do you expect to see in the console?
 */
// I expect to see: Optional("Smokey")
print(thirdPetName)








/*: question7
 ### 7. Write an if statement that will print _just_ the value of `thirdPetName` to the console, without all the **Optional(...)** stuff.
 */
if let pet3 = thirdPetName {
    print(pet3)
}








/*: question8
 ### 8. Write a function called `printPetName` that takes a pet's name as a parameter. It should print the pet's name if the pet name exists, or "There is no pet name!" if the pet's name does not exist.
 */
func printPetName(petsName: String?) {
    if let name = petsName {
        print(name)
    } else {
        print("There is no pet name!")
    }
}








/*: question9
 ### 9. Call `printPetName` with `thirdPetName`. Then call it again with `otherPetName`. What do you expect to see in the console?
 */
// I expect to see:
// Smokey 
// There is no pet name

printPetName(petsName: thirdPetName)
printPetName(petsName: otherPetName)







/*: question10
 ### 10. Write a function called `minimum`. `minimum` should take a list of `Int`s and return the minimum one in the bunch. For now, don't deal with the possibility of an empty array; assume the array passed to `minimum` always has one item. What should the return type of `minimum` be?
 */
func minimum(listOfIntegers: [Int]) -> Int {
    var minInt = listOfIntegers[0]
    for number in listOfIntegers {
        if number < minInt {
            minInt = number
        }
    }
    return minInt
}








/*: question11
 ### 11. Call your `minimum` function with the following array. What value do you expect to get back? What value did you get back?
 */
let values1 = [4, 12, 3, 2, 9, 14, 11]
print(minimum(listOfIntegers: values1))







/*: question12
 ### 12. Call your `minimum` function with the following empty array. What happens when you call your function?
 */
let values2: [Int] = []
// print(minimum(listOfIntegers: values2))

// Error: index out of range because array is empty







/*: question13
 ### 13. Write a new function, `maybeMinimum`. It should handle cases in which the array passed to it is empty. If the array is empty, `nil` should be returned; otherwise, the smallest `Int` in the array should be returned. What should the return type of `maybeMinimum` be? (Note: So far, you haven't seen anything other than optional `String`s. Do you expect other optional types, such as `Int`s, to be handled differently?)
 */
func maybeMinimum(listOfIntegers: [Int]) -> Int? {
    if listOfIntegers.isEmpty {
        return nil
    } else {
        var minInt = listOfIntegers[0]
        for number in listOfIntegers {
            if number < minInt {
                minInt = number
            }
        }
        return minInt
    }
}









/*: question14
 ### 14. Call `maybeMinum` with `values1`. What do you expect the return value to be?
 */
if let minInt = maybeMinimum(listOfIntegers: values1) {
    print(minInt)
}








/*: question15
 ### 15. Call `maybeMinum` with `values2`, an empty array. What do you expect the return value to be?
 */
print(maybeMinimum(listOfIntegers: values2))









//: Click [here](https://github.com/learn-co-curriculum/swift-OptionalsNFunctions-lab/blob/solution/OptionalsFunctions.playground/Pages/solution.xcplaygroundpage/Contents.swift) to see the solution on GitHub.
