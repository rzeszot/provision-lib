import XCTest
@testable import Provision

final class ProvisionTests: XCTestCase {

    var profile: ProvisioningProfile!

    override func setUpWithError() throws {
        profile = try ProvisioningProfile.load(from: URL(fileURLWithPath: #file).deletingLastPathComponent().appendingPathComponent("example.mobileprovision"))
    }

    override func tearDown() {
        profile = nil
    }

    // MARK: -

    func testAppIDName() {
        XCTAssertEqual(profile.appIDName, "Store")
    }

    func testName() {
        XCTAssertEqual(profile.name, "Store")
    }

    func testApplicationIdentifierPrefix() {
        XCTAssertEqual(profile.applicationIdentifierPrefix, ["9G47WR9NR2"])
    }

    func testCreationDate() {
        XCTAssertEqual(profile.creationDate, Date(timeIntervalSince1970: 1585846261))
    }

    func testPlatform() {
        XCTAssertEqual(profile.platform, ["iOS"])
    }

    func testIsXCodeManaged() {
        XCTAssertFalse(profile.isXcodeManaged)
    }

    func testDeveloperCertificates() {
        let certs = profile.developerCertificates

        XCTAssertEqual(certs.count, 1)
    }

    func testExpirationDate() {
        XCTAssertEqual(profile.expirationDate, Date(timeIntervalSince1970: 1615930410))
    }

    func testTeamIdentifier() {
        let teamIdentifier = profile.teamIdentifier

        XCTAssertEqual(teamIdentifier.count, 1)
        XCTAssertEqual(teamIdentifier.first, "9G47WR9NR2")
    }

    func testTeamName() {
        XCTAssertEqual(profile.teamName, "Damian Rzeszot")
    }

    func testTimeToLive() {
        XCTAssertEqual(profile.timeToLive, 348)
    }

    func testUUID() {
        XCTAssertEqual(profile.uuid, UUID(uuidString: "116fc328-d0be-4b0e-ab94-569352f58e76"))

    }

    func testVersion() {
        XCTAssertEqual(profile.version, 1)

    }

    // MARK: -

    static var allTests = [
        ("testAppIDName", testAppIDName),
        ("testName", testName),
        ("testApplicationIdentifierPrefix", testApplicationIdentifierPrefix),
        ("testCreationDate", testCreationDate),
        ("testPlatform", testPlatform),
        ("testIsXCodeManaged", testIsXCodeManaged),
        ("testDeveloperCertificates", testDeveloperCertificates),
        ("testExpirationDate", testExpirationDate),
        ("testTeamIdentifier", testTeamIdentifier),
        ("testTeamName", testTeamName),
        ("testTimeToLive", testTimeToLive),
        ("testUUID", testUUID),
        ("testVersion", testVersion),
    ]
}
