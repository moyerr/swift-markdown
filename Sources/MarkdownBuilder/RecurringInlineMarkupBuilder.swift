import Markdown

@resultBuilder
public enum RecurringInlineMarkupBuilder {
    public static func buildBlock<each Component: RecurringInlineMarkup>(
        _ components: repeat each Component
    ) -> [any RecurringInlineMarkup] {
        var result = [any RecurringInlineMarkup]()

        for component in repeat each components {
            result.append(component)
        }

        return result
    }

    public static func buildOptional(
        _ component: [any RecurringInlineMarkup]?
    ) -> [any RecurringInlineMarkup] {
        component ?? []
    }

    public static func buildArray(
        _ components: [[any RecurringInlineMarkup]]
    ) -> [any RecurringInlineMarkup] {
        components.flatMap { $0 }
    }

    public static func buildEither(
        first component: [any RecurringInlineMarkup]
    ) -> [any RecurringInlineMarkup] {
        component
    }

    public static func buildEither(
        second component: [any RecurringInlineMarkup]
    ) -> [any RecurringInlineMarkup] {
        component
    }
}
