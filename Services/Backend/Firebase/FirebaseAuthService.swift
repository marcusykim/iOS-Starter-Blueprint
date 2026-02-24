import Foundation

final class FirebaseAuthService: AuthServicing {
    func signIn(email: String, password: String) async throws -> AppSession {
        // TODO: Replace with Firebase Auth SDK implementation.
        return AppSession(userId: "firebase-user", token: "firebase-token", expiresAt: Date().addingTimeInterval(3600))
    }

    func signOut() async throws {
        // TODO: FirebaseAuth.Auth.auth().signOut()
    }
}
