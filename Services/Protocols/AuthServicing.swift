import Foundation

protocol AuthServicing {
    func signIn(email: String, password: String) async throws -> AppSession
    func signOut() async throws
}
