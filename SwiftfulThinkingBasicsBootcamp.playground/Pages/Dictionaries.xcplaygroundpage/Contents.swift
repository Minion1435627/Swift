
import Foundation

var finalFruits: [String] = ["Apple", "Orange", "Banana", "Apple"]

print(finalFruits)

let myFruit = finalFruits[1]

var fruitsSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]

print(fruitsSet)

// okay to have same value with different key in dictionary
var myFirstDictionary: [String : Bool] = [
    "Apple" : true,
    "Orange" : false
]

// dictionary is optional type
let item = myFirstDictionary["Banana"]



var anotherDictionary: [String : String] = [
    "abc" : "Apple",
    "def" : "Banana",
]


let item2 = anotherDictionary["abc"]


var anotherDictionary2: [Int : String] = [
    1 : "Apple",
    2 : "Banana",
]

let item3 = anotherDictionary2[1]


// apend the dictionary
anotherDictionary["xyz"] = "Mango"

// remove from dictionary
anotherDictionary.removeValue(forKey: "def")

print(anotherDictionary)


struct PostModel {
    let id: String
    let title: String
    let likeCount: Int
}

var postArray: [PostModel] = [
    PostModel(id: "abc123", title: "Post 1", likeCount: 5),
    PostModel(id: "def678", title: "Post 2", likeCount: 7),
    PostModel(id: "xyz987", title: "Post 3", likeCount: 217),
]

// array need to check that there is value in the index
if postArray.indices.contains(1) {
    let item = postArray[1]
    print(item)
}

var postDict: [String:PostModel] = [
    "abc123" : PostModel(id: "abc123", title: "Post 1", likeCount: 5),
    "def678" : PostModel(id: "def678", title: "Post 2", likeCount: 7),
    "xyz987" : PostModel(id: "xyz987", title: "Post 3", likeCount: 217),
]

let myNewItem = postDict["def678"]
print(myNewItem)
