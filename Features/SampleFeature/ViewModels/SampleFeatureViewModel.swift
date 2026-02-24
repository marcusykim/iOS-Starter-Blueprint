import Foundation

@MainActor
final class SampleFeatureViewModel: ObservableObject {
    @Published private(set) var profile: UserProfile?
    @Published private(set) var statusMessage: String = "Idle"

    private let authService: AuthServicing
    private let databaseService: DatabaseServicing

    init(authService: AuthServicing, databaseService: DatabaseServicing) {
        self.authService = authService
        self.databaseService = databaseService
    }

    func load() async {
        do {
            let session = try await authService.signIn(email: "demo@example.com", password: "password")
            let profile = try await databaseService.fetchCurrentUserProfile(userId: session.userId)
            self.profile = profile
            self.statusMessage = "Loaded \(profile.displayName)"
        } catch {
            self.statusMessage = "Error: \(error.localizedDescription)"
        }
    }
}
