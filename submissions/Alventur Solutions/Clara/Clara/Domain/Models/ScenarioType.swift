import Foundation

enum ScenarioType: String, Codable, CaseIterable, Identifiable {
    case publicSpeaking = "Public Speaking"
    case jobInterview = "Job Interview"
    case debate = "Debate"
    case englishFluency = "English Fluency"
    
    var id: String { self.rawValue }
    
    var descriptor: String {
        switch self {
        case .publicSpeaking: return "TED talk coach"
        case .jobInterview: return "HR interviewer"
        case .debate: return "Strict debate judge"
        case .englishFluency: return "English partner"
        }
    }
}
