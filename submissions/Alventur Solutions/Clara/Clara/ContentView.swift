import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScenarioPickerView()
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: [VoiceSession.self, SessionMetrics.self], inMemory: true)
}
