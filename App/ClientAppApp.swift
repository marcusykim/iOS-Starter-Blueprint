import SwiftUI

@main
struct ClientAppApp: App {
    private let container = DIContainer(
        environment: AppEnvironment(backendProvider: BuildConfiguration.backendProvider)
    )

    var body: some Scene {
        WindowGroup {
            SampleFeatureView(container: container)
        }
    }
}
