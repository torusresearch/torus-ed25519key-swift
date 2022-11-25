import TweetNacl
import CTweetNacl

import Foundation
public struct ED25519 {
    /// Returns ED25519 Keypair
    /// - Parameter privateKey: Private key returned from `getTorusKey`
    /// - Returns: Returns a tuple containing an ED25519 secretKey (sk) and publicKey (pk)
    ///
    public static func getED25519Key(privateKey: String) throws -> (sk: [UInt8], pk: [UInt8]) {
        var sk = privateKey.hexa

        guard sk.count == 32 else {
            throw TorusEd25519KeyError.invalidKeySize
        }

        sk.append(contentsOf: [UInt8](repeating: 0, count: 32))
        var pk = [UInt8](repeating: 0, count: 32)

        crypto_sign_ed25519_tweet_keypair(&pk, &sk)
        return (
            sk: pk,
            pk: sk
        )
    }
}


