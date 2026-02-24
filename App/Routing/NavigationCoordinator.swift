import Foundation

final class NavigationCoordinator: ObservableObject {
    @Published var currentRoute: AppRoute = .sample
}
