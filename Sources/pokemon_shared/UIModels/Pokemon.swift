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
    public let id: Int
    public let name: String
    public let types: [PokemonType]
    public let url: String
    public let description: String
    public let category: String
    public let weight: String
    public let height: String
    public let mainAbility: String
    public let moves: [String]

    public init(
        id: Int,
        name: String,
        types: [PokemonType],
        url: String,
        description: String,
        category: String,
        weight: String,
        height: String,
        mainAbility: String,
        moves: [String]
    ) {
        self.id = id
        self.name = name
        self.types = types
        self.url = url
        self.description = description
        self.category = category
        self.weight = weight
        self.height = height
        self.mainAbility = mainAbility
        self.moves = moves
    }
}
