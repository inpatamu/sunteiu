extension UIView {
    func mergeSpacingPreferences() {
        for subview in subviews {
            if let previousSubview = subview.previousSubview {
                subview.spacingPreferences.top = max(subview.spacingPreferences.top, previousSubview.spacingPreferences.bottom)
            }
            if let nextSubview = subview.nextSubview {
                subview.spacingPreferences.bottom = max(subview.spacingPreferences.bottom, nextSubview.spacingPreferences.top)
            }
            if let leadingSubview = subview.leadingSubview {
                subview.spacingPreferences.leading = max(subview.spacingPreferences.leading, leadingSubview.spacingPreferences.trailing)
            }
            if let trailingSubview = subview.trailingSubview {
                subview.spacingPreferences.trailing = max(subview.spacingPreferences.trailing, trailingSubview.spacingPreferences.leading)
            }
        }
    }
}
