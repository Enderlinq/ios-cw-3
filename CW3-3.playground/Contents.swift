import Foundation
func isValidPassword(password:String?) -> Bool {
    guard password != nil else { return false }
 
    // at least one uppercase,
    // at least one digit
    // at least one lowercase
    // 8 characters total
    let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}")
    return passwordTest.evaluate(with: password)
}

IsValidPassword(password: "W456BigIHG")

func checkPassword(password: String){
    if password.count >= 8{
        print("Password is valid!")
    }
    else {
        print("Password is not valid!")
    }
}

checkPassword(password: "83QyteW")
