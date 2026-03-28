//
//  UserEntity.swift
//  pokemon_shared
//
//  Created by Norman Sánchez on 27/03/26.
//

import Foundation

public struct PokemonUser: Identifiable {
    public var id: String
    public var email: String
    
    public init(id: String, email: String) {
        self.id = id
        self.email = email
    }
}
