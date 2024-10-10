import Markdown

@resultBuilder
public enum ListItemBuilder {
    public static func buildBlock(
        _ components: ListItem
    ) -> [ListItem] {
        [components]
    }

    public static func buildBlock(
        _ components: [ListItem]
    ) -> [ListItem] {
        components
    }

    public static func buildOptional(
        _ component: [ListItem]?
    ) -> [ListItem] {
        component ?? []
    }

    public static func buildArray(
        _ components: [[ListItem]]
    ) -> [ListItem] {
        components.flatMap { $0 }
    }

    public static func buildEither(
        first component: [ListItem]
    ) -> [ListItem] {
        component
    }

    public static func buildEither(
        second component: [ListItem]
    ) -> [ListItem] {
        component
    }
}

