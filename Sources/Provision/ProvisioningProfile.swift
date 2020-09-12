import Foundation

public struct ProvisioningProfile: Decodable {
    let appIDName: String
    let name: String
    let applicationIdentifierPrefix: [String]
    let creationDate: Date
    let platform: [String]
    let isXcodeManaged: Bool
    let developerCertificates: [Data]
    let expirationDate: Date
    let entitlements: Entitlements
    let teamIdentifier: [String]
    let teamName: String
    let timeToLive: Int
    let uuid: UUID
    let version: Int

    private enum CodingKeys: String, CodingKey {
        case name = "Name"
        case appIDName = "AppIDName"
        case applicationIdentifierPrefix = "ApplicationIdentifierPrefix"
        case creationDate = "CreationDate"
        case platform = "Platform"
        case isXcodeManaged = "IsXcodeManaged"
        case developerCertificates = "DeveloperCertificates"
        case entitlements = "Entitlements"
        case expirationDate = "ExpirationDate"
        case teamIdentifier = "TeamIdentifier"
        case teamName = "TeamName"
        case timeToLive = "TimeToLive"
        case uuid = "UUID"
        case version = "Version"
    }
}

extension ProvisioningProfile {
    public static func load(from url: URL) throws -> ProvisioningProfile {
        let decoder = PropertyListDecoder()
        let data = try Data(contentsOf: url)

        return try decoder.decode(ProvisioningProfile.self, from: data)
    }
}
