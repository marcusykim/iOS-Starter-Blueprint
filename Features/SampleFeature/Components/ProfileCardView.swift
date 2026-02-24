import SwiftUI

struct ProfileCardView: View {
    let profile: UserProfile

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(profile.displayName).font(.headline)
            Text(profile.email).font(.subheadline).foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}
