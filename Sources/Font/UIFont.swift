//
//  UIFont.swift
//  Font
//

#if !os(macOS)

import UIKit

extension UIFont {
	public var isBold: Bool {
		return self.fontDescriptor.symbolicTraits.contains(.traitBold)
	}
	
	public var isItalic: Bool {
		return self.fontDescriptor.symbolicTraits.contains(.traitItalic)
	}
	
	public func bold(_ bold: Bool = true) -> UIFont {
		var traits = self.fontDescriptor.symbolicTraits
		if bold {
			traits.insert(.traitBold)
		} else {
			traits.remove(.traitBold)
		}
		let descriptor = self.fontDescriptor.withSymbolicTraits(traits)
		precondition(descriptor != nil, "UIFontDescriptor.withSymbolicTraits returned nil")
		return .init(descriptor: descriptor!, size: 0)
	}
	
	public func italic(_ italic: Bool = true) -> UIFont {
		var traits = self.fontDescriptor.symbolicTraits
		if italic {
			traits.insert(.traitItalic)
		} else {
			traits.remove(.traitItalic)
		}
		let descriptor = self.fontDescriptor.withSymbolicTraits(traits)
		precondition(descriptor != nil, "UIFontDescriptor.withSymbolicTraits returned nil")
		return .init(descriptor: descriptor!, size: 0)
	}
}

#endif
