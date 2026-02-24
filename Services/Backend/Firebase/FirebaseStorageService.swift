import Foundation

final class FirebaseStorageService: StorageServicing {
    func upload(data: Data, path: String) async throws -> URL {
        // TODO: Replace with Firebase Storage upload.
        return URL(string: "https://example.com/firebase/\(path)")!
    }
}
