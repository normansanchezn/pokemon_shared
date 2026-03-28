//
//  PokeErrorType.swift
//  pokemon_shared
//
//  Created by Norman Sánchez on 27/03/26.
//

public enum PokeErrorType: Error {
    case UserNotFound
    case InvalidEmail
    case InvalidPassword
    case InvalidEmailOrPassword
    case UnknownError
}
