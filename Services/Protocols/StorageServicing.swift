import Foundation

protocol StorageServicing {
    func upload(data: Data, path: String) async throws -> URL
}
