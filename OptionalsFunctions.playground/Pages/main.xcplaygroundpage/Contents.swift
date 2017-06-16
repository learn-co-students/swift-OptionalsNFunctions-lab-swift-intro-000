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
// 'petName' is type 'String'







/*: question2
 ### 2. What is the type of the variable `otherPetName` declared below? What is its value?
 */
var otherPetName: String?


//otherPetName is type 'String?' which is an 'optional String'




/*: question3
 ### 3. What is the _current value_ of `otherPetName`?
 */
//nil







/*: question4
 ### 4. What is the type of the variable `thirdPetName` declared below? What is its value?
 */
var thirdPetName: String? = nil
//'thirdPetName' is an 'optional String' and its value is nil









/*: question5
 ### 5. Assign a value to `thirdPetName`. What type of values can you assign to `thirdPetName`? After assigning a value, what is its type?
 */

thirdPetName = "Mika"
//its type is still 'optional String'









/*: question6
 ### 6. Print `thirdPetName` to the console using Swift's `print()` function. What do you expect to see in the console?
 */


print(thirdPetName)
//the value is Optional("Mika")






/*: question7
 ### 7. Write an if statement that will print _just_ the value of `thirdPetName` to the console, without all the **Optional(...)** stuff.
 */
if let name = thirdPetName {
    print(name)
}







/*: question8
 ### 8. Write a function called `printPetName` that takes a pet's name as a parameter. It should print the pet's name if the pet name exists, or "There is no pet name!" if the pet's name does not exist.
 */
func printPetName(petName: String?){
    if let name = petName{
        print(name)
    }else{
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
func minimum(numList: [Int]) -> Int{
    var min = 0
    for (index,num) in numList.enumerated(){
        if (index == 0){
            min = num
        }
        if(num < min){
            min = num
        }
    }
    return min
    
}








/*: question11
 ### 11. Call your `minimum` function with the following array. What value do you expect to get back? What value did you get back?
 */
let values1 = [4, 12, 3, 2, 9, 14, 11]

print(minimum(numList: values1))

//2 is the minimum






/*: question12
 ### 12. Call your `minimum` function with the following empty array. What happens when you call your function?
 */
let values2: [Int] = []
print(minimum(numList: values2))

//0






/*: question13
 ### 13. Write a new function, `maybeMinimum`. It should handle cases in which the array passed to it is empty. If the array is empty, `nil` should be returned; otherwise, the smallest `Int` in the array should be returned. What should the return type of `maybeMinimum` be? (Note: So far, you haven't seen anything other than optional `String`s. Do you expect other optional types, such as `Int`s, to be handled differently?)
 */
func maybeMinimun(numList: [Int]) -> Int? {
    var min = 0
    if numList.isEmpty{
        return nil
    }else{
      
        for (index,num) in numList.enumerated(){
            min = numList[0]
            if(num < min){
                min = num
            }
        }
        return min
    }
}


    









/*: question14
 ### 14. Call `maybeMinum` with `values1`. What do you expect the return value to be?
 */
maybeMinimun(numList:values1)
//value is Optional(4)







/*: question15
 ### 15. Call `maybeMinum` with `values2`, an empty array. What do you expect the return value to be?
 */
maybeMinimun(numList:values2)

//value is nil since values2 is am emtpy list






//: Click [here](https://github.com/learn-co-curriculum/swift-OptionalsNFunctions-lab/blob/solution/OptionalsFunctions.playground/Pages/solution.xcplaygroundpage/Contents.swift) to see the solution on GitHub.
