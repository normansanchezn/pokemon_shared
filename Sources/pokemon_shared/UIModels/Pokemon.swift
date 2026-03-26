//
//  Pokemon.swift
//  pokemon_shared
//
//  Created by Norman Sánchez on 24/03/26.
//
import SwiftUI

public struct Pokemon: Equatable, Hashable, Sendable {
    public let id: Int
    public let name: String
    public let types: [PokemonType]
    public let url: String
    
    public init(id: Int, name: String, types: [PokemonType], url: String) {
        self.id = id
        self.name = name
        self.types = types
        self.url = url
    }
}

public struct DetailsPokemon: Equatable, Hashable, Sendable {
    public let weight: String
    public let height: String
    public let baseExperience: Int
}
