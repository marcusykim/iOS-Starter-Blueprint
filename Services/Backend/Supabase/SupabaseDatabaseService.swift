import Foundation

final class SupabaseDatabaseService: DatabaseServicing {
    func fetchCurrentUserProfile(userId: String) async throws -> UserProfile {
        // TODO: Replace with Supabase table query.
        return UserProfile(id: userId, displayName: "Supabase User", email: "supabase@example.com", createdAt: Date())
    }
}
