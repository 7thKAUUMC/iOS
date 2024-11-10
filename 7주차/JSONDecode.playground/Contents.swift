import UIKit
import Foundation

struct User: Codable {
    let name: String
    let age: Int
    let email: String
}

let jsonData = """
{
    "name": "SOOHYUN",
    "age": 23,
    "email": "lsoo6741@icloud.com"
}
""".data(using: .utf8)!

do {
    let decoder = JSONDecoder()
    let user = try decoder.decode(User.self, from: jsonData)
    print("User name: \(user.name) \nUser age: \(user.age) \nUser email: \(user.email)")
} catch {
    print("Error: \(error)")
}

