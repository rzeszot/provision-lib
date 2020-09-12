import Foundation

public struct Entitlements: Decodable {
    let betaReportsActive: Bool
    let passTypeIdentifiers: [String]
    let applicationIdentifier: String
    let keychainAccessGroups: [String]
    let getTaskAllow: Bool
    let teamIdentifier: String
    let apsEnvironment: String

    private enum CodingKeys: String, CodingKey {
        case betaReportsActive = "beta-reports-active"
        case passTypeIdentifiers = "com.apple.developer.pass-type-identifiers"
        case applicationIdentifier = "application-identifier"
        case keychainAccessGroups = "keychain-access-groups"
        case getTaskAllow = "get-task-allow"
        case teamIdentifier = "com.apple.developer.team-identifier"
        case apsEnvironment = "aps-environment"
    }
}
