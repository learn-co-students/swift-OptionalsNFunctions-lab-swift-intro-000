/*: Outline
 
 
 # Optionals & Functions
 
 ### Readings associated with this lab
 
 * [Optionals](https://github.com/learn-co-curriculum/swift-optionals-readme)
 * [Optionals & Functions](https://github.com/learn-co-curriculum/swift-optionalFunc-readme)
 
 
 */
/*: question1
 ### 1. What is the type of the variable `petName` declared below? What is its value?
 */
var petName = "Scooter the Turtlee 🐢"


//type = String
//value = "Scooter the Turtle 🐢"

/*: question2
 ### 2. What is the type of the variable `otherPetName` declared below? What is its value?
 */
var otherPetName: String?

//type = optional String
//value = nil

/*: question3
 ### 3. What is the _current value_ of `otherPetName`?
 */
// value = nil

/*: question4
 ### 4. What is the type of the variable `thirdPetName` declared below? What is its value?
 */
var thirdPetName: String? = nil


//String optional, with value nil


/*: question5
 ### 5. Assign a value to `thirdPetName`. What type of values can you assign to `thirdPetName`? After assigning a value, what is its type?
 */
// can assign values of the same type, so Strings

thirdPetName = "Joanna"

//types in swift can not change, so a string optional after assigning a different string to it, remains an optional sring :)


/*: question6
 ### 6. Print `thirdPetName` to the console using Swift's `print()` function. What do you expect to see in the console?
 */
// we expect to see a wrapped optional string, so Optional("printedString")

print(thirdPetName)

/*: question7
 ### 7. Write an if statement that will print _just_ the value of `thirdPetName` to the console, without all the **Optional(...)** stuff.
 */
// write your code here
thirdPetName = "ok"

if let NewthirgPetName = thirdPetName {
    print(NewthirgPetName)
}

/*: question8
 ### 8. Write a function called `printPetName` that takes a pet's name as a parameter. It should print the pet's name if the pet name exists, or "There is no pet name!" if the pet's name does not exist.
 */
func printPetName(petName: String?) {
    if let nextPetName = petName {
        print(nextPetName)
    } else {
        print("There is no pet name!")
    }
}

/*: question9
 ### 9. Call `printPetName` with `thirdPetName`. Then call it again with `otherPetName`. What do you expect to see in the console?
 */
printPetName(petName: thirdPetName)

//exoected: clear print, unwrapped optional string

let jackName: String? = "Jacek"

printPetName(petName: jackName)

/*: question10
 ### 10. Write a function called `minimum`. `minimum` should take a list of `Int`s and return the minimum one in the bunch. For now, don't deal with the possibility of an empty array; assume the array passed to `minimum` always has one item. What should the return type of `minimum` be?
 */
func minimum(myList: [Int]) -> Int {
    var min = myList[0]
    let rest = myList.dropFirst()
    for item in rest {
        if item < min {
            min = item
        }
    }
    return min
    //    return myList.min()
    
}








/*: question11
 ### 11. Call your `minimum` function with the following array. What value do you expect to get back? What value did you get back?
 */
let values1 = [4, 12, 3, 2, 9, 14, 11]
// expected to return 2

minimum(myList: values1)

/*: question12
 ### 12. Call your `minimum` function with the following empty array. What happens when you call your function?
 */
let values2: [Int] = []
// write your code here


//we expect a crash
//minimum(list: values2)

/*: question13
 ### 13. Write a new function, `maybeMinimum`. It should handle cases in which the array passed to it is empty. If the array is empty, `nil` should be returned; otherwise, the smallest `Int` in the array should be returned. What should the return type of `maybeMinimum` be? (Note: So far, you haven't seen anything other than optional `String`s. Do you expect other optional types, such as `Int`s, to be handled differently?)
 */
func maybeMinimum(myList: [Int]) -> Int? {
    var myReturn: Int? = 1
    if myList == nil {
        myReturn = nil
    } else {
        //        var min = myList[0]
        //        let rest = myList.dropFirst()
        //        for item in rest {
        //            if item < min {
        //                min = item
        //            }
        //        }
        //        if let newMin = min {
        //        myReturn = newMin
        myReturn = myList.min()
        
    }
    //        myReturn = myList.min()
    return myReturn
    
}










/*: question14
 ### 14. Call `maybeMinum` with `values1`. What do you expect the return value to be?
 */
maybeMinimum(myList: values1)
//expected return 2, but print Optional(2)

print(maybeMinimum(myList: values1))

/*: question15
 ### 15. Call `maybeMinum` with `values2`, an empty array. What do you expect the return value to be?
 */
//expected to return nil

maybeMinimum(myList: values2)


//: Click [here](https://github.com/learn-co-curriculum/swift-OptionalsNFunctions-lab/blob/solution/OptionalsFunctions.playground/Pages/solution.xcplaygroundpage/Contents.swift) to see the solution on GitHub.
