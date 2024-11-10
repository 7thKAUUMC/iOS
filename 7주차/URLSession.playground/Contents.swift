import UIKit

func getMethod() {
    let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1")!
    let task  = URLSession.shared.dataTask(with: url) { data, response, error in
        if let error = error {
            print("error: \(error)")
            return
        }
        
        if let httpResponse = response as? HTTPURLResponse {
            print("statusCode: \(httpResponse.statusCode)")
        }
        
        if let data = data {
            let responseString = String(data: data, encoding: .utf8)
            print("responseString: \(responseString!)")
        }
    }

    task.resume()
}

func postMethod() {
    let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    
    let parameters: [String: Any] = [
        "userId": 1,
        "title": "foo",
        "body": "bar"
    ]
    
    request.httpBody = try? JSONSerialization.data(withJSONObject: parameters)
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        if let error = error {
            print("error: \(error)")
            return
        }
        
        if let httpResponse = response as? HTTPURLResponse {
            print("statusCode: \(httpResponse.statusCode)")
        }
        
        if let data = data {
            let responseString = String(data: data, encoding: .utf8)
            print("responseString: \(responseString!)")
        }
    }
    task.resume()
}

func deleteMethod() {
    let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1")!
    var request = URLRequest(url: url)
    request.httpMethod = "DELETE"
    
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        if let error = error {
            print("error: \(error)")
            return
        }
        
        if let httpResponse = response as? HTTPURLResponse {
            print("statusCode: \(httpResponse.statusCode)")
        }
        
        if let data = data {
            let responseString = String(data: data, encoding: .utf8)
            print("responseString: \(responseString!)")
        }
    }
    task.resume()
}

func patchMethod() {
    let url = URL(string: "https://jsonplaceholder.typicode.com/posts/2")!
    var request = URLRequest(url: url)
    request.httpMethod = "PATCH"

    let parameters: [String: Any] = [
        "title": "JEJE",
    ]
    
    request.httpBody = try? JSONSerialization.data(withJSONObject: parameters)
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        if let error = error {
            print("error: \(error)")
            return
        }
        
        if let httpResponse = response as? HTTPURLResponse {
            print("statusCode: \(httpResponse.statusCode)")
        }
        
        if let data = data {
            let responseString = String(data: data, encoding: .utf8)
            print("responseString: \(responseString!)")
        }
    }
    task.resume()
}

func putMethod() {
    let url = URL(string: "https://jsonplaceholder.typicode.com/posts/100")!
    var request = URLRequest(url: url)
    request.httpMethod = "PUT"

    let parameters: [String: Any] = [
        "title": "SOOHYUN",
        "body": "qwerqwrqwrqwr",
        "userId": 101
    ]
    request.httpBody = try? JSONSerialization.data(withJSONObject: parameters)
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")

    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        if let error = error {
            print("Error: \(error)")
            return
        }

        if let httpResponse = response as? HTTPURLResponse {
            print("Status Code: \(httpResponse.statusCode)")
        }

        if let data = data {
            let responseString = String(data: data, encoding: .utf8)
            print("Response Data: \(responseString!)")
        }
    }
    task.resume()
}


