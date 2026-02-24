import Foundation

protocol DatabaseServicing {
    func fetchCurrentUserProfile(userId: String) async throws -> UserProfile
}
