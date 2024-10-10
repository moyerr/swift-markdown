import Markdown

@resultBuilder
public enum BlockMarkupBuilder {
    public static func buildBlock<each Component: BlockMarkup>(
        _ components: repeat each Component
    ) -> [any BlockMarkup] {
        var result = [any BlockMarkup]()

        for component in repeat each components {
            result.append(component)
        }

        return result
    }

    public static func buildOptional(
        _ component: [any BlockMarkup]?
    ) -> [any BlockMarkup] {
        component ?? []
    }

    public static func buildArray(
        _ components: [[any BlockMarkup]]
    ) -> [any BlockMarkup] {
        components.flatMap { $0 }
    }

    public static func buildEither(
        first component: [any BlockMarkup]
    ) -> [any BlockMarkup] {
        component
    }

    public static func buildEither(
        second component: [any BlockMarkup]
    ) -> [any BlockMarkup] {
        component
    }
}
