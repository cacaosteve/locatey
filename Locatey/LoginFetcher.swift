import SwiftUI
import Alamofire

//struct ResponseData : Decodable {
//    var employees: [Employee]
//}

struct NewSession: Codable {
    let token: String
}

public class LoginFetcher: ObservableObject {
    @Published var newSession = "ljdsfslfkjsfslksj"
    @Published var showingAlert = false
    public init(){
        loadWithAF()
    }
    func loadWithAF() {
        let headers: HTTPHeaders = [
                .authorization(username: "user1", password: "password"),
                .accept("application/json")
            ]
        let request = AF.request("http://localhost:8080/users/login", method: .post, parameters: nil, encoding: URLEncoding.default, headers: headers)
        request.responseDecodable(of: NewSession.self) { (response) in
            switch response.result {
            case .success(let value):
                self.newSession = value.token
            case .failure( _):
                self.newSession = "fail"
            }
        }
    }
}
