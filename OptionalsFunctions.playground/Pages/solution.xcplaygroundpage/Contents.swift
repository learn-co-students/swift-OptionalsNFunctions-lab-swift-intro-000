//: [Go Back](@next)

//: ### Question 1
//: `petName` is a `String`. Its value is "Scooter the Turtle 🐢".



//: ### Question 2
//: `otherPetName` is a `String?` (an optional `String`). Its value is `nil`.
var otherPetName: String?



//: ### Question 3
//: The current value of `otherPetName` is `nil`, because `Optional`s that are declared without a value default to `nil`.



//: ### Question 4
//: `thirdPetName` is a `String?`. Its value is `nil`.
var thirdPetName: String?



//: ### Question 5
thirdPetName = "Mittens 🐈"
//: You can assign any `String` value to `thirdPetName`. Even when it has a value, its type is still `String?`, because the variable's type does not change just because you assigned a value to it.



//: ### Question 6
print(thirdPetName)
//: You should see **Optional("Mittens 🐈")** in the console, since that is the string representation of an optional string.



//: ### Question 7
if let name = thirdPetName {
    print(name)
}



//: ### Question 8
func printPetName(petName: String?) {
    if let name = petName {
        print(name)
    } else {
        print("There is no pet name!")
    }
}



//: ### Question 9
printPetName(thirdPetName)
printPetName(otherPetName)
//: You should see "Mittens 🐈" printed for the first call, and "There is no pet name!" printed for the second call.



//: ### Question 10
func minimum(items: [Int]) -> Int {
    var min = items[0]
    let rest = items.dropFirst()
    for item in rest {
        if item < min {
            min = item
        }
    }
    return min
}



//: ### Question 11
let values1 = [4, 12, 3, 2, 9, 14, 11]
minimum(values1)
//: You should get **2** back as a result.



//: ### Question 12
let values2: [Int] = []
//minimum(values2)
//: Calling `minimum` with an empty array will result in an index out of bounds error. (Uncomment the line above to see this error.)



//: ### Question 13
func maybeMinimum(items: [Int]) -> Int? {
    if items.isEmpty {
        return nil
    }

    var min = items[0]
    let rest = items.dropFirst()
    for item in rest {
        if item < min {
            min = item
        }
    }
    return min
}
//: The return type of `maybeMinimum` should be `Int?`, since it can return `nil`.



//: ### Question 14
maybeMinimum(values1)
//: The return value is **Optional(2)**. The value 2 was found to be the minimum as you'd expect, but since the return type is an optional `Int` (`Int?`), it is wrapped in an optional.



//: ### Question 15
maybeMinimum(values2)
//: The return value is `nil`, since `values2` is empty and so there is no minimum value.
