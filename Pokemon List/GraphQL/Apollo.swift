//
//  Apollo.swift
//  Pokemon List
//
//  Created by Wandi on 11/06/21.
//

import Foundation
import Apollo

class Network {
    
    static let shared = Network()
    private init() { }
    
    lazy var apollo = ApolloClient(url: URL(string: "https://graphql-pokeapi.vercel.app/api/graphql")!)
}
