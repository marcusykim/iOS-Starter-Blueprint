import Foundation

final class SupabaseStorageService: StorageServicing {
    func upload(data: Data, path: String) async throws -> URL {
        // TODO: Replace with Supabase Storage upload.
        return URL(string: "https://example.com/supabase/\(path)")!
    }
}
