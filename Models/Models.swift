import Foundation

// Centralized app models.
// Keep DTO/domain structs here unless model volume requires splitting by module.

struct UserProfile: Identifiable, Codable, Equatable {
    let id: String
    var displayName: String
    var email: String
    var createdAt: Date
}

struct AppSession: Codable, Equatable {
    let userId: String
    let token: String
    let expiresAt: Date

    var isExpired: Bool { Date() >= expiresAt }
}
