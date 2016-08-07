import Foundation
import AVFoundation

// MARK: Encoder
protocol Encoder: Runnable {
}

// MARK: VideoEncoderDelegate
public protocol VideoEncoderDelegate: class {
    func didSetFormatDescription(video formatDescription:CMFormatDescriptionRef?)
    func sampleOutput(video sampleBuffer: CMSampleBuffer)
}

// MARK: VideoDecoderDelegate
public protocol VideoDecoderDelegate: class {
    func imageOutput(buffer:DecompressionBuffer)
}

// MARK: AudioEncoderDelegate
public protocol AudioEncoderDelegate: class {
    func didSetFormatDescription(audio formatDescription:CMFormatDescriptionRef?)
    func sampleOutput(audio sampleBuffer: CMSampleBuffer)
}

public struct DecompressionBuffer {
    public var imageBuffer:CVImageBuffer?
    var presentationTimeStamp:CMTime
    var duration:CMTime
}
