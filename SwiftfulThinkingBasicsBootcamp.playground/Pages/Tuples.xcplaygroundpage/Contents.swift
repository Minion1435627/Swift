import Foundation




var userName: String = "Hello"
var userIsPremium: Bool = false
var userIsNew: Bool = true

// return the userName directly
func getUserName() -> String {
    userName
}
func getUserIsPremium() -> Bool {
    userIsPremium
}

// limited to 1 return type
func getUserInfo() -> String {
    
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    return name
}

// tuple can combine multiple pieces of data
func getUserInfo2() -> (String, Bool) {
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    return (name, isPremium)
}

var userData1: String = userName
var userData2: (String, Bool, Bool) = (userName, userIsPremium, userIsNew)


let info1 = getUserInfo2()
// 0 means the order in the info1
let name1: String = info1.0
// let name1: String = info1.1 // we cannot use .1, since info1.1 is the Boolean not the String

func getUserInfo3() -> (name: String, isPremium: Bool) {
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    return (name, isPremium)
}

// info2 is the tuple
let info2 = getUserInfo3()
// here the index is no longer the number, is the variable now
let name2 = info2.name
let isPremium = info2.isPremium

func getUserInfo4() -> (name: String, isPremium: Bool, isNew: Bool) {
    return (userName, userIsPremium, userIsNew)
}

func doSomethingWithUserInfo(info: (name: String, isPremium: Bool, isNew: Bool)) {
    
}


let info = getUserInfo4()
// the first info is the parameters in the doSomethingWithUserInfo, and the second info is the let variable
doSomethingWithUserInfo(info: info)
