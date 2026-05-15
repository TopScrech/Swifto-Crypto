# Swifto-Crypto

Encryption helpers for Swift

## Usage

```swift
import SwiftoCrypto

let alice = CryptoModel()
let bob = CryptoModel()

bob.receivedPublicKey = alice.publicKey

let encrypted = alice.encrypt("Hello Bob", using: bob.publicKey)

if let encrypted {
    let decrypted = bob.decrypt(encrypted, using: bob.privateKey)
}
```

Public key sharing
```swift
let model = CryptoModel()

let publicKeyString = model.publicKeyToString(model.publicKey)
let publicKey = model.stringToPublicKey(publicKeyString)
```

## Supported platforms
- iOS / iPadOS 17+
- macOS 14+
- tvOS 17+
- watchOS 10+
- visionOS 1+
- macCatalyst 17+
