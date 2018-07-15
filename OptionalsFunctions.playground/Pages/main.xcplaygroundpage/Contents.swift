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
// type is a string of value "Scooter the Turtle"







/*: question2
 ### 2. What is the type of the variable `otherPetName` declared below? What is its value?
 */
var otherPetName: String?
// type is an Optional of value nil
print(otherPetName)







/*: question3
 ### 3. What is the _current value_ of `otherPetName`?
 */
// current value of otherPetName is nil







/*: question4
 ### 4. What is the type of the variable `thirdPetName` declared below? What is its value?
 */
var thirdPetName: String? = nil
// type of thirdPetName ia an optional of value nil








/*: question5
 ### 5. Assign a value to `thirdPetName`. What type of values can you assign to `thirdPetName`? After assigning a value, what is its type?
 */
// write your code here
thirdPetName = "Fido"
print(thirdPetName)
print(type(of: thirdPetName))










/*: question6
 ### 6. Print `thirdPetName` to the console using Swift's `print()` function. What do you expect to see in the console?
 */
// write your code here

// as per above, when printing an option I expect the wrapper






/*: question7
 ### 7. Write an if statement that will print _just_ the value of `thirdPetName` to the console, without all the **Optional(...)** stuff.
 */
// write your code here

if let thirdPetName = thirdPetName {
    print(thirdPetName)
} else {
    print("there is no value for third pet name")
}








/*: question8
 ### 8. Write a function called `printPetName` that takes a pet's name as a parameter. It should print the pet's name if the pet name exists, or "There is no pet name!" if the pet's name does not exist.
 */
// write your code here

//func printPetName(petName: String?) -> (String) {
//    let toPrint: String
//    if let petName = petName {
//        toPrint = petName
//    } else {
//        toPrint = "There is no pet name!"
//    }
//    print(toPrint)
//    return toPrint
//}

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
 // write your code here

printPetName(petName: thirdPetName)
printPetName(petName: otherPetName)
let fourthPetName = "Erin testing"
printPetName(petName: fourthPetName)








/*: question10
 ### 10. Write a function called `minimum`. `minimum` should take a list of `Int`s and return the minimum one in the bunch. For now, don't deal with the possibility of an empty array; assume the array passed to `minimum` always has one item. What should the return type of `minimum` be?
 */
// write your code here

func minimum(listInts: [Int]) -> Int {
    
    var lowestNum = listInts[0]
    
    for nums in listInts {
        
        if nums < lowestNum {
            lowestNum = nums
        }
        
    }
    return lowestNum
}






/*: question11
 ### 11. Call your `minimum` function with the following array. What value do you expect to get back? What value did you get back?
 */
let values1 = [4, 12, 3, 2, 9, 14, 11]
// write your code here

minimum(listInts: values1)







/*: question12
 ### 12. Call your `minimum` function with the following empty array. What happens when you call your function?
 */
let values2: [Int] = []
// write your code here

//minimum(listInts: values2)







/*: question13
 ### 13. Write a new function, `maybeMinimum`. It should handle cases in which the array passed to it is empty. If the array is empty, `nil` should be returned; otherwise, the smallest `Int` in the array should be returned. What should the return type of `maybeMinimum` be? (Note: So far, you haven't seen anything other than optional `String`s. Do you expect other optional types, such as `Int`s, to be handled differently?)
 */
// write your code here


func maybeMinimum(listInts: [Int]) -> Int? {
    
    var lowestNum: Int?
    
    if listInts.isEmpty {
        lowestNum = nil
    } else {
        lowestNum = listInts[0]
        for nums in listInts {
            if nums < lowestNum! {
                lowestNum = nums
            }
        }
    }
    return lowestNum
}






/*: question14
 ### 14. Call `maybeMinum` with `values1`. What do you expect the return value to be?
 */
// write your code here


maybeMinimum(listInts: values1)








/*: question15
 ### 15. Call `maybeMinum` with `values2`, an empty array. What do you expect the return value to be?
 */
// write your code here

maybeMinimum(listInts: values2)







//: Click [here](https://github.com/learn-co-curriculum/swift-OptionalsNFunctions-lab/blob/solution/OptionalsFunctions.playground/Pages/solution.xcplaygroundpage/Contents.swift) to see the solution on GitHub.
