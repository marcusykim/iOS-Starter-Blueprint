import Foundation

final class FirebaseDatabaseService: DatabaseServicing {
    func fetchCurrentUserProfile(userId: String) async throws -> UserProfile {
        // TODO: Replace with Firestore/Realtime Database fetch.
        return UserProfile(id: userId, displayName: "Firebase User", email: "firebase@example.com", createdAt: Date())
    }
}
