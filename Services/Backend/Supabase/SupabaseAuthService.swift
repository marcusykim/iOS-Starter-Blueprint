import Foundation

final class SupabaseAuthService: AuthServicing {
    func signIn(email: String, password: String) async throws -> AppSession {
        // TODO: Replace with Supabase Auth SDK implementation.
        return AppSession(userId: "supabase-user", token: "supabase-token", expiresAt: Date().addingTimeInterval(3600))
    }

    func signOut() async throws {
        // TODO: Replace with Supabase sign out.
    }
}
