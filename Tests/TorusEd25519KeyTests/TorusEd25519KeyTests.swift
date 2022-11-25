import XCTest
@testable import TorusEd25519Key

class ED25519Tests: XCTestCase {
    func testThatInvalidKeyThrows() throws {
        var thrownError: Error?

        XCTAssertThrowsError(try ED25519.getED25519Key(privateKey: "invalid")) {
            thrownError = $0
        }

        XCTAssertTrue(
            thrownError is TorusTweetNaclError,
            "Unexpected error type: \(type(of: thrownError))"
        )

        // Verify that our error is equal to what we expect
        XCTAssertEqual(thrownError as? TorusTweetNaclError, .invalidKeySize)
    }

    func testThatValidKeyReturnsEd25519KeyPair() throws {
        let keypair = try ED25519.getED25519Key(privateKey: "746869736b65797061697277696c6c67656e6572617465737563636573736675")

        XCTAssertEqual(keypair.sk.bytesToHex(), "0464a42fb8c3048cd700b00522b3df8aff9a482665c8571ced3f3f385f14d40d".uppercased())
        XCTAssertEqual(keypair.pk.bytesToHex(), "746869736b65797061697277696c6c67656e65726174657375636365737366750464a42fb8c3048cd700b00522b3df8aff9a482665c8571ced3f3f385f14d40d".uppercased())
    }
}
