import SwiftUI

struct SampleFeatureView: View {
    @StateObject private var viewModel: SampleFeatureViewModel

    init(container: DIContainer) {
        _viewModel = StateObject(
            wrappedValue: SampleFeatureViewModel(
                authService: container.authService,
                databaseService: container.databaseService
            )
        )
    }

    var body: some View {
        VStack(spacing: 16) {
            Text("Starter Blueprint")
                .font(.title2)
                .bold()

            Text(viewModel.statusMessage)
                .foregroundStyle(.secondary)

            if let profile = viewModel.profile {
                VStack(alignment: .leading, spacing: 6) {
                    Text("Name: \(profile.displayName)")
                    Text("Email: \(profile.email)")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(Color(.secondarySystemBackground))
                .clipShape(RoundedRectangle(cornerRadius: 12))
            }

            Button("Load Sample Data") {
                Task { await viewModel.load() }
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}
