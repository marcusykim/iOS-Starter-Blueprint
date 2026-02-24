import Foundation

final class DIContainer {
    let authService: AuthServicing
    let databaseService: DatabaseServicing
    let storageService: StorageServicing

    init(environment: AppEnvironment = .default) {
        switch environment.backendProvider {
        case .firebase:
            self.authService = FirebaseAuthService()
            self.databaseService = FirebaseDatabaseService()
            self.storageService = FirebaseStorageService()
        case .supabase:
            self.authService = SupabaseAuthService()
            self.databaseService = SupabaseDatabaseService()
            self.storageService = SupabaseStorageService()
        }
    }
}
