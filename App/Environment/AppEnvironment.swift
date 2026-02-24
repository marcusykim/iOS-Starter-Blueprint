import Foundation

enum BackendProvider: String {
    case firebase
    case supabase
}

struct AppEnvironment {
    let backendProvider: BackendProvider

    static let `default` = AppEnvironment(backendProvider: .firebase)
}
