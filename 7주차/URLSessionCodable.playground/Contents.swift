import UIKit

struct Geo: Codable {
    let lat: String
    let lng: String
}

struct Address: Codable {
    let street: String
    let suite: String
    let city: String
    let zipcode: String
    let geo: Geo
}

struct Company: Codable {
    let name: String
    let catchPhrase: String
    let bs: String
}

struct User: Codable {
    let id: Int
    let name: String
    let username: String
    let email: String
    let address: Address
    let phone: String
    let website: String
    let company: Company
}

actor NetWorkManager {
    private var userData: User?
    
    func fetchData() async { // async 함수 선언: 비동기 작업 가능
        let url = URL(string: "https://jsonplaceholder.typicode.com/users/1")!
        
        do { // try await 부분의 에러 핸들링
            let (data, response) = try await URLSession.shared.data(from: url) // URLSession에서 데이터를 비동기적으로 가져옴, 비동기 함수이기 때문에 await 키워드를 사용해 호출함
            
            if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 {
                let decoder = JSONDecoder()
                let user = try decoder.decode(User.self, from: data) // JSON 데이터를 위에 선언한 User 구조체 형식으로 변환, 오류 발생 시 catch 블록으로 이동
                
                userData = user // user 객체를 userData에 저장
            } else {
                print("ERROR")
            }
        } catch {
            print("Data fetch error: \(error)")
        }
    }
    
    func getUserData()-> User? {
        return userData
    }
    
}

let networkManager = NetWorkManager()

Task {
    
    await networkManager.fetchData()
    
    if let user = await networkManager.getUserData() {
        print("User Name: \(user.name)")
        print("Address: \(user.address.street), \(user.address.city)")
        print("Geo Location: \(user.address.geo.lat), \(user.address.geo.lng)")
        print("Company Name: \(user.company.name)")
    } else {
        print("no user data")
    }
    
}
