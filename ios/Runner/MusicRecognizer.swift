import Foundation
import ShazamKit
import AVFoundation

@objc class MusicRecognizer: NSObject, SHSessionDelegate {
    private let session = SHSession()
    private var resultCallback: ((String) -> Void)?

    override init() {
        super.init()
        session.delegate = self
    }

    @objc func startRecognition(with result: @escaping (String) -> Void) {
        self.resultCallback = result
        let audioEngine = AVAudioEngine()
        let inputNode = audioEngine.inputNode
        let format = inputNode.outputFormat(forBus: 0)

        inputNode.installTap(onBus: 0, bufferSize: 1024, format: format) { buffer, time in
            self.session.matchStreamingBuffer(buffer, at: time)
        }

        try? AVAudioSession.sharedInstance().setCategory(.record, mode: .default)
        try? AVAudioSession.sharedInstance().setActive(true, options: [])
        try? audioEngine.start()
    }

    func session(_ session: SHSession, didFind match: SHMatch) {
        if let mediaItem = match.mediaItems.first {
            let title = mediaItem.title ?? "Unknown Title"
            let artist = mediaItem.artist ?? "Unknown Artist"
            let artworkURL = mediaItem.artworkURL?.absoluteString ?? ""

            let resultData: [String: String] = [
                "title": title,
                "artist": artist,
                "artworkUrl": artworkURL
            ]

            if let jsonData = try? JSONSerialization.data(withJSONObject: resultData, options: []),
               let jsonString = String(data: jsonData, encoding: .utf8) {
                resultCallback?(jsonString)
            } else {
                resultCallback?("Error encoding result")
            }
        }
    }

    func session(_ session: SHSession, didNotFindMatchFor signature: SHSignature, error: Error?) {
        resultCallback?("No match found")
    }
}
