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

// variable String

////: ### Question 1
////: `petName` is a `String`. Its value is "Scooter the Turtle 🐢".
//



/*: question2
 ### 2. What is the type of the variable `otherPetName` declared below? What is its value?
 */
var otherPetName: String?

// optional String

////: ### Question 2
////: `otherPetName` is a `String?` (an optional `String`). Its value is `nil`.
//var otherPetName: String?



/*: question3
 ### 3. What is the _current value_ of `otherPetName`?
 */
// nil


////: ### Question 3
////: The current value of `otherPetName` is `nil`, because `Optional`s that are declared without a value default to `nil`.




/*: question4
 ### 4. What is the type of the variable `thirdPetName` declared below? What is its value?
 */
var thirdPetName: String? = nil

// type optional string, value nil


////: ### Question 4
////: `thirdPetName` is a `String?`. Its value is `nil`.
//var thirdPetName: String?




/*: question5
 ### 5. Assign a value to `thirdPetName`. What type of values can you assign to `thirdPetName`? After assigning a value, what is its type?
 */
// write your code here

thirdPetName = "Charlie"

// type optional string

////: ### Question 5
//thirdPetName = "Mittens 🐈"
////: You can assign any `String` value to `thirdPetName`. Even when it has a value, its type is still `String?`, because the variable's type does not change just because you assigned a value to it.





/*: question6
 ### 6. Print `thirdPetName` to the console using Swift's `print()` function. What do you expect to see in the console?
 */
// write your code here

print(thirdPetName)

//optional


////: ### Question 6
//print(thirdPetName)
////: You should see **Optional("Mittens 🐈")** in the console, since that is the string representation of an optional string.




/*: question7
 ### 7. Write an if statement that will print _just_ the value of `thirdPetName` to the console, without all the **Optional(...)** stuff.
 */
// write your code here

if let name = thirdPetName{
    print(name)
}


////: ### Question 7
//if let name = thirdPetName {
//    print(name)
//}



/*: question8
 ### 8. Write a function called `printPetName` that takes a pet's name as a parameter. It should print the pet's name if the pet name exists, or "There is no pet name!" if the pet's name does not exist.
 */
// write your code here
func printPetName(petName: String?)
{
    if let name = petName
    {
        print(name)
    }
    else
    {
        print("There is no pet name")
    }
}

////: ### Question 8
//func printPetName(petName: String?) {
//    if let name = petName {
//        print(name)
//    } else {
//        print("There is no pet name!")
//    }
//}





/*: question9
 ### 9. Call `printPetName` with `thirdPetName`. Then call it again with `otherPetName`. What do you expect to see in the console?
 */
 // write your code here

printPetName(petName: thirdPetName)

printPetName(petName: otherPetName)


////: ### Question 9
//printPetName(thirdPetName)
//printPetName(otherPetName)
////: You should see "Mittens 🐈" printed for the first call, and "There is no pet name!" printed for the second call.
//




/*: question10
 ### 10. Write a function called `minimum`. `minimum` should take a list of `Int`s and return the minimum one in the bunch. For now, don't deal with the possibility of an empty array; assume the array passed to `minimum` always has one item. What should the return type of `minimum` be?
 */
// write your code here

func findSmallestNumber(list: [Int]) -> Int
{
    
    var minVal = list[0]
    
    for number in list
    {
        if minVal > number
        {
            minVal = number
        }
    }
    
    return minVal
}



////: ### Question 10
//func minimum(items: [Int]) -> Int {
//    var min = items[0]
//    let rest = items.dropFirst()
//    for item in rest {
//        if item < min {
//            min = item
//        }
//    }
//    return min
//}
//



/*: question11
 ### 11. Call your `minimum` function with the following array. What value do you expect to get back? What value did you get back?
 */
let values1 = [4, 12, 3, 2, 9, 14, 11]
// write your code here


findSmallestNumber(list: values1)


////: ### Question 11
//let values1 = [4, 12, 3, 2, 9, 14, 11]
//minimum(values1)
////: You should get **2** back as a result.



/*: question12
 ### 12. Call your `minimum` function with the following empty array. What happens when you call your function?
 */
let values2: [Int] = []
// write your code here

//findSmallestNumber(list: values2)

// error (App crash)

////: ### Question 12
//let values2: [Int] = []
////minimum(values2)
////: Calling `minimum` with an empty array will result in an index out of bounds error. (Uncomment the line above to see this error.)
/*: question13
 ### 13. Write a new function, `maybeMinimum`. It should handle cases in which the array passed to it is empty. If the array is empty, `nil` should be returned; otherwise, the smallest `Int` in the array should be returned. What should the return type of `maybeMinimum` be? (Note: So far, you haven't seen anything other than optional `String`s. Do you expect other optional types, such as `Int`s, to be handled differently?)
 */
// write your code here


func maybeSmallestNumber(list: [Int]) -> Int?
{
    if list.isEmpty
    {
        return nil
    }
    else
    {
        var minVal = list[0]
        
        for number in list
        {
            if minVal > number
            {
                minVal = number
            }
        }
        return minVal
    }
    
}

////: ### Question 13
//func maybeMinimum(items: [Int]) -> Int? {
//    if items.isEmpty {
//        return nil
//    }
//
//    var min = items[0]
//    let rest = items.dropFirst()
//    for item in rest {
//        if item < min {
//            min = item
//        }
//    }
//    return min
//}
////: The return type of `maybeMinimum` should be `Int?`, since it can return `nil`.
//





/*: question14
 ### 14. Call `maybeMinum` with `values1`. What do you expect the return value to be?
 */
// write your code here

// return number 2

maybeSmallestNumber(list: values1)


////: ### Question 14
//maybeMinimum(items: values1)
////: The return value is **Optional(2)**. The value 2 was found to be the minimum as you'd expect, but since the return type is an optional `Int` (`Int?`), it is wrapped in an optional.

/*: question15
 ### 15. Call `maybeMinum` with `values2`, an empty array. What do you expect the return value to be?
 */
// write your code here

// return nil
maybeSmallestNumber(list: values2)

////: ### Question 15
//maybeMinimum(values2)
////: The return value is `nil`, since `values2` is empty and so there is no minimum value.




////: Click [here](https://github.com/learn-co-curriculum/swift-OptionalsNFunctions-lab/blob/solution/OptionalsFunctions.playground/Pages/solution.xcplaygroundpage/Contents.swift) to see the solution on GitHub.
