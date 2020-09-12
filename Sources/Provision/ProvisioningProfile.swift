import Foundation

public struct ProvisioningProfile: Decodable {
    public let appIDName: String
    public let name: String
    public let applicationIdentifierPrefix: [String]
    public let creationDate: Date
    public let platform: [String]
    public let isXcodeManaged: Bool
    public let developerCertificates: [Data]
    public let expirationDate: Date
    public let entitlements: Entitlements
    public let teamIdentifier: [String]
    public let teamName: String
    public let timeToLive: Int
    public let uuid: UUID
    public let version: Int

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
