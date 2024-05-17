import Foundation
import CryptoKit

public extension CryptoModel {
    func publicKeyToString(_ publicKey: P521.KeyAgreement.PublicKey) -> String {
        let data = publicKey.rawRepresentation
        
        return data.base64EncodedString()
    }
    
    func stringToPublicKey(_ string: String) -> P521.KeyAgreement.PublicKey? {
        guard let data = Data(base64Encoded: string),
              let publicKey = try? P521.KeyAgreement.PublicKey(rawRepresentation: data) else { return nil }
        
        return publicKey
    }
}
