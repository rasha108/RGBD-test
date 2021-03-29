import CoreVideo
import CoreImage

extension CVPixelBuffer {
    func transformedImage(rotationAngle: CGFloat) -> CIImage? {
        let image = CIImage(cvPixelBuffer: self, options: [:])
        return image.transformed(by: CGAffineTransform(rotationAngle: rotationAngle)).applyingFilter("CIBicubicScaleTransform")
    }
}
