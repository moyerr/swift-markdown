import Markdown

@resultBuilder
public enum InlineMarkupBuilder {
    public static func buildBlock<each Component: InlineMarkup>(
        _ components: repeat each Component
    ) -> [any InlineMarkup] {
        var result = [any InlineMarkup]()

        for component in repeat each components {
            result.append(component)
        }

        return result
    }

    public static func buildOptional(
        _ component: [any InlineMarkup]?
    ) -> [any InlineMarkup] {
        component ?? []
    }

    public static func buildArray(
        _ components: [[any InlineMarkup]]
    ) -> [any InlineMarkup] {
        components.flatMap { $0 }
    }

    public static func buildEither(
        first component: [any InlineMarkup]
    ) -> [any InlineMarkup] {
        component
    }

    public static func buildEither(
        second component: [any InlineMarkup]
    ) -> [any InlineMarkup] {
        component
    }
}
