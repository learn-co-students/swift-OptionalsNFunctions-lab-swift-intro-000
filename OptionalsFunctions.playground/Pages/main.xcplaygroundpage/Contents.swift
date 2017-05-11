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
//A string of value "Scooter the Turtle 🐢"







/*: question2
 ### 2. What is the type of the variable `otherPetName` declared below? What is its value?
 */
var otherPetName: String?

//An optional string of value nil.





/*: question3
 ### 3. What is the _current value_ of `otherPetName`?
 */
//nil







/*: question4
 ### 4. What is the type of the variable `thirdPetName` declared below? What is its value?
 */
var thirdPetName: String? = nil


//An optional string of value nil.







/*: question5
 ### 5. Assign a value to `thirdPetName`. What type of values can you assign to `thirdPetName`? After assigning a value, what is its type?
 */
// write your code here


thirdPetName = "Glug glug the orc."

//Still an optional String.


/*: question6
 ### 6. Print `thirdPetName` to the console using Swift's `print()` function. What do you expect to see in the console?
 */
// write your code here


print(thirdPetName)
//See "Optional" with the variable's name in parenthesis.





/*: question7
 ### 7. Write an if statement that will print _just_ the value of `thirdPetName` to the console, without all the **Optional(...)** stuff.
 */
// write your code here

if let name = thirdPetName {
    print(name)
}






/*: question8
 ### 8. Write a function called `printPetName` that takes a pet's name as a parameter. It should print the pet's name if the pet name exists, or "There is no pet name!" if the pet's name does not exist.
 */
// write your code here

func printPetName(petName name: String?) {
    if let name = name {
        print(name)
    } else {
        print("There is no pet name!")
    }
}






/*: question9
 ### 9. Call `printPetName` with `thirdPetName`. Then call it again with `otherPetName`. What do you expect to see in the console?
 */
 // write your code here

printPetName(petName: thirdPetName)
//Prints thirdPetName
printPetName(petName: otherPetName)
//Prints "There is no pet name!"





/*: question10
 ### 10. Write a function called `minimum`. `minimum` should take a list of `Int`s and return the minimum one in the bunch. For now, don't deal with the possibility of an empty array; assume the array passed to `minimum` always has one item. What should the return type of `minimum` be?
 */
// write your code here

func minimum(list: [Int]) -> Int {
    var minValue = list[0]
    for value in list {
        if value < minValue {
            minValue = value
        }
    }
    return minValue
}

let testInts = [2, 33, 44, 1, 111]
minimum(list: testInts)




/*: question11
 ### 11. Call your `minimum` function with the following array. What value do you expect to get back? What value did you get back?
 */
let values1 = [4, 12, 3, 2, 9, 14, 11]
// write your code here

minimum(list: values1)

//Get back 2






/*: question12
 ### 12. Call your `minimum` function with the following empty array. What happens when you call your function?
 */
let values2: [Int] = []
// write your code here


//minimum(list: values2)
//get an error






/*: question13
 ### 13. Write a new function, `maybeMinimum`. It should handle cases in which the array passed to it is empty. If the array is empty, `nil` should be returned; otherwise, the smallest `Int` in the array should be returned. What should the return type of `maybeMinimum` be? (Note: So far, you haven't seen anything other than optional `String`s. Do you expect other optional types, such as `Int`s, to be handled differently?)
 */
// write your code here

//func maybeMinimum(list: [Int?]) -> Int? {
//    var minValue: Int? = list[0]
//    if minValue != nil {
//        for value in list {
//            if value! < minValue! {
//                minValue = value
//            }
//        }
//        return minValue
//    } else {
//        return nil
//    }
//}

func maybeMinimum(list: [Int]) -> Int? {
    if list.isEmpty {
        return nil
    }
    
    var minValue = list[0]
    for value in list {
        if value < minValue {
            minValue = value
        }
    }
    return minValue
}



maybeMinimum(list: testInts)





/*: question14
 ### 14. Call `maybeMinum` with `values1`. What do you expect the return value to be?
 */
// write your code here


maybeMinimum(list: values1)
//returns 2





/*: question15
 ### 15. Call `maybeMinum` with `values2`, an empty array. What do you expect the return value to be?
 */
// write your code here

maybeMinimum(list: values2)
//returns nil






//: Click [here](https://github.com/learn-co-curriculum/swift-OptionalsNFunctions-lab/blob/solution/OptionalsFunctions.playground/Pages/solution.xcplaygroundpage/Contents.swift) to see the solution on GitHub.
