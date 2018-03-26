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

//petName is of type String and has the Value "Scooter the Turtle 🐢"

/*: question2
 ### 2. What is the type of the variable `otherPetName` declared below? What is its value?
 */
var otherPetName: String?

//otherPetName is of the type String and is Optional and has a value = nil

/*: question3
 ### 3. What is the _current value_ of `otherPetName`?
 */

//otherPetName current Value is nil


/*: question4
 ### 4. What is the type of the variable `thirdPetName` declared below? What is its value?
 */
var thirdPetName: String? = nil

//thirdPetName is of the type String and is Optional and has a value of nil

/*: question5
 ### 5. Assign a value to `thirdPetName`. What type of values can you assign to `thirdPetName`? After assigning a value, what is its type?
 */
// write your code here

thirdPetName = "Moto"
// We Can assign any String Value
// The type remains String?

/*: question6
 ### 6. Print `thirdPetName` to the console using Swift's `print()` function. What do you expect to see in the console?
 */
// write your code here


print (thirdPetName)

// Optional("Moto")

/*: question7
 ### 7. Write an if statement that will print _just_ the value of `thirdPetName` to the console, without all the **Optional(...)** stuff.
 */
// write your code here

if let thirdPetName = thirdPetName
{
    print(thirdPetName)
}

/*: question8
 ### 8. Write a function called `printPetName` that takes a pet's name as a parameter. It should print the pet's name if the pet name exists, or "There is no pet name!" if the pet's name does not exist.
 */
// write your code here

func printPetName (myPetName: String?)
{
    if let myPetName = myPetName, myPetName != nil
    {
        print (myPetName)
    }
    else
    {
        print ("There is no pet name")
    }
}

printPetName(myPetName: nil)
printPetName(myPetName: "Jazzie")





/*: question9
 ### 9. Call `printPetName` with `thirdPetName`. Then call it again with `otherPetName`. What do you expect to see in the console?
 */
 // write your code here


printPetName(myPetName: thirdPetName)
//Expect to see the value of thirdPetName ie. Moto

/*: question10
 ### 10. Write a function called `minimum`. `minimum` should take a list of `Int`s and return the minimum one in the bunch. For now, don't deal with the possibility of an empty array; assume the array passed to `minimum` always has one item. What should the return type of `minimum` be?
 */
// write your code here

func minimum (theList: [Int]) -> Int
{
    var minValue = theList[0]
    var isSmallest: Bool
    
    for i in theList
    {
        isSmallest = true
        for j in theList
        {
            if i > j
            {
                isSmallest = false
            }
        }
        
        if isSmallest
        {
            minValue = i
        }
    }
    
    return minValue
}

let values0 = [5, 13, 4, 3, 10, 15, 12]
print (minimum(theList: values0))

/*: question11
 ### 11. Call your `minimum` function with the following array. What value do you expect to get back? What value did you get back?
 */
let values1 = [4, 12, 3, 2, 9, 14, 11]
// write your code here

print (minimum(theList: values1))

/*: question12
 ### 12. Call your `minimum` function with the following empty array. What happens when you call your function?
 */
let values2: [Int] = []
// write your code here

// print (minimum(theList: values2))

//Fatal error: Index out of range


/*: question13
 ### 13. Write a new function, `maybeMinimum`. It should handle cases in which the array passed to it is empty. If the array is empty, `nil` should be returned; otherwise, the smallest `Int` in the array should be returned. What should the return type of `maybeMinimum` be? (Note: So far, you haven't seen anything other than optional `String`s. Do you expect other optional types, such as `Int`s, to be handled differently?)
 */
// write your code here

func maybeMinimum (theList: [Int]) -> Int?
{
    if theList.isEmpty {
        return nil
    }
    else
    {
        var minValue = theList[0]
        var isSmallest: Bool
    
        for i in theList
        {
            isSmallest = true
            for j in theList
            {
                if i > j
                {
                    isSmallest = false
                }
            }
            
            if isSmallest
            {
                minValue = i
            }
        }
        return minValue
    }
}



/*: question14
 ### 14. Call `maybeMinum` with `values1`. What do you expect the return value to be?
 */
// write your code here

print (maybeMinimum(theList: values1))

/*: question15
 ### 15. Call `maybeMinum` with `values2`, an empty array. What do you expect the return value to be?
 */
// write your code here

print (maybeMinimum(theList: values2))

//: Click [here](https://github.com/learn-co-curriculum/swift-OptionalsNFunctions-lab/blob/solution/OptionalsFunctions.playground/Pages/solution.xcplaygroundpage/Contents.swift) to see the solution on GitHub.
