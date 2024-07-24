public static func shadow(_ style: ShadowStyle) -> some ShapeStyle {
    switch style {
    case .dark:
        return ShapeStyle(shadowColor: .black, shadowOffset: CGSize(width: 0, height: 2), shadowRadius: 4)
    case .light:
        return ShapeStyle(shadowColor: .white, shadowOffset: CGSize(width: 0, height: -2), shadowRadius: 4)
    case .subtle:
        return ShapeStyle(shadowColor: .gray, shadowOffset: CGSize(width: 0, height: 1), shadowRadius: 2)
    case .custom(let color, let offset, let radius):
        return ShapeStyle(shadowColor: color, shadowOffset: offset, shadowRadius: radius)
    }
}
