//
//  WebService\.swift
//  Ecomm-STR
//
//  Created by ShreeThaanu on 13/03/23.
//

import Foundation
import Combine

class webservice {
    func makeServiceCall() -> AnyPublisher<[Product], Error> {
        let url = URL(string: NetworkConstant().BaseURL)!
        let request = URLRequest(url: url)
        return URLSession.shared.dataTaskPublisher(for: request)
            .map { $0.data }
            .decode(type: [Product].self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}

struct Product: Codable {
    let id: Int
    let name: String
    let price: Double
}
