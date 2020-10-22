//
//  Font.swift
//  Font
//

#if !os(macOS) && !os(watchOS)

import UIKit

public enum Font {
	public static let ContentSizeCategories: [UIContentSizeCategory] = [
		.extraSmall,
		.small,
		.medium,
		.large,
		.extraLarge,
		.extraExtraLarge,
		.extraExtraExtraLarge,
		.accessibilityMedium,
		.accessibilityLarge,
		.accessibilityExtraLarge,
		.accessibilityExtraExtraLarge,
		.accessibilityExtraExtraExtraLarge,
	]
	
	public static let ContentSizeCategoryMap: [UIContentSizeCategory : Int] = [
		.extraSmall : 0,
		.small : 1,
		.medium : 2,
		.large : 3,
		.extraLarge : 4,
		.extraExtraLarge : 5,
		.extraExtraExtraLarge : 6,
		.accessibilityMedium : 7,
		.accessibilityLarge : 8,
		.accessibilityExtraLarge : 9,
		.accessibilityExtraExtraLarge : 10,
		.accessibilityExtraExtraExtraLarge : 11,
	]
	
	public static let ContentSizeCount = Self.ContentSizeCategories.count
	
	public static func ContentSizeCategoryToIndex(_ contentSizeCategory: UIContentSizeCategory) -> Int {
		return self.ContentSizeCategoryMap[contentSizeCategory] ?? -1
	}
	
	public static func IndexToContentSizeCategory(_ index: Int) -> UIContentSizeCategory {
		if index < 0 {
			if #available(iOS 10.0, tvOS 10.0, *) {
				return .unspecified
			} else {
				return .large
			}
		}
		return self.ContentSizeCategories[index]
	}
	
	#if !os(tvOS)
	@available(iOS 11.0, *)
	public static let largeTitle = UIFont.preferredFont(forTextStyle: .largeTitle)
	#endif
	
	@available(iOS 9.0, *)
	public static let title1 = UIFont.preferredFont(forTextStyle: .title1)
	
	@available(iOS 9.0, *)
	public static let title2 = UIFont.preferredFont(forTextStyle: .title2)
	
	@available(iOS 9.0, *)
	public static let title3 = UIFont.preferredFont(forTextStyle: .title3)
	
	public static let headline = UIFont.preferredFont(forTextStyle: .headline)
	
	public static let subheadline = UIFont.preferredFont(forTextStyle: .subheadline)
	
	public static let body = UIFont.preferredFont(forTextStyle: .body)
	
	@available(iOS 9.0, *)
	public static let callout = UIFont.preferredFont(forTextStyle: .callout)
	
	public static let footnote = UIFont.preferredFont(forTextStyle: .footnote)
	
	public static let caption1 = UIFont.preferredFont(forTextStyle: .caption1)
	
	public static let caption2 = UIFont.preferredFont(forTextStyle: .caption2)
}

#endif
