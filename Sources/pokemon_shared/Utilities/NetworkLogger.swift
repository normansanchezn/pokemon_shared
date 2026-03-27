//
//  NetworkLogger.swift
//  pokemon_shared
//
//  Created by Codex on 26/03/26.
//

import Foundation

public enum PokemonNetworkLogger {
    public static func logRequest(_ request: URLRequest) {
        let endpoint = request.url?.absoluteString ?? "unknown"
        let method = request.httpMethod ?? "GET"
        print(header("REQUEST"))
        print("Method: \(method)")
        print("Endpoint: \(endpoint)")

        guard let body = request.httpBody, !body.isEmpty else {
            print("Body: <empty>")
            print(footer())
            return
        }

        print("Body:")
        print(prettyPrintedJSON(from: body) ?? String(decoding: body, as: UTF8.self))
        print(footer())
    }

    public static func logResponse(_ request: URLRequest, data: Data) {
        let endpoint = request.url?.absoluteString ?? "unknown"
        print(header("RESPONSE"))
        print("Endpoint: \(endpoint)")
        print("Body:")
        print(prettyPrintedJSON(from: data) ?? String(decoding: data, as: UTF8.self))
        print(footer())
    }

    private static func prettyPrintedJSON(from data: Data) -> String? {
        guard
            let object = try? JSONSerialization.jsonObject(with: data),
            JSONSerialization.isValidJSONObject(object),
            let prettyData = try? JSONSerialization.data(
                withJSONObject: object,
                options: [.prettyPrinted, .sortedKeys]
            ),
            let prettyString = String(data: prettyData, encoding: .utf8)
        else {
            return nil
        }

        return prettyString.replacingOccurrences(of: "\\/", with: "/")
    }

    private static func header(_ title: String) -> String {
        "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n[PokemonAPI] \(title)"
    }

    private static func footer() -> String {
        "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    }
}
