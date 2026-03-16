import Foundation
import SwiftData

@Model
final class VoiceSession {
    var id: UUID = UUID()
    var scenarioValue: String // SwiftData limitations with enums usually mean storing backing raw value
    var startedAt: Date
    var endedAt: Date
    var durationSeconds: Int
    
    @Relationship(deleteRule: .cascade)
    var metrics: SessionMetrics?
    
    var scenario: ScenarioType {
        get { ScenarioType(rawValue: scenarioValue) ?? .publicSpeaking }
        set { scenarioValue = newValue.rawValue }
    }
    
    init(scenario: ScenarioType, startedAt: Date = Date(), endedAt: Date = Date(), durationSeconds: Int = 0) {
        self.scenarioValue = scenario.rawValue
        self.startedAt = startedAt
        self.endedAt = endedAt
        self.durationSeconds = durationSeconds
    }
}
