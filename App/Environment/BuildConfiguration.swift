import Foundation

enum BuildConfiguration {
    static var backendProvider: BackendProvider {
        if let value = ProcessInfo.processInfo.environment["BACKEND_PROVIDER"]?.lowercased(),
           let provider = BackendProvider(rawValue: value) {
            return provider
        }
        return .firebase
    }
}
