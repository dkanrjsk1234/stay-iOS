//
//  testView.swift
//  stay
//
//  Created by dgsw8th26 on 10/31/23.
//

import SwiftUI
import Alamofire

struct testView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    init() {
        callTestAPI()
    }
    
    func callTestAPI() {
        let response = AF.request("https://jsonplaceholder.typicode.com/todos").response { res in
            debugPrint(res)
        }
    }
}

#Preview {
    testView()
}

