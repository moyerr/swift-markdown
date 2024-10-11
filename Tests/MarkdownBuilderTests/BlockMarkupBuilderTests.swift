import XCTest
import Markdown
@testable import MarkdownBuilder

final class BlockMarkupBuilderTests: XCTestCase {
    func testExample() throws {
        let condition = false
        let document = Document {
            Heading(level: 2) {
                Text("Heading")
            }

            Paragraph {
                Text("This is powered by a ")
                InlineCode("@resultBuilder")
                SoftBreak()
                Text("wow")
            }


            if condition {
                Paragraph(Text("Second paragraph"))
            }
        }
        let expectedDump = """
            ## Heading

            This is powered by a `@resultBuilder`
            wow
            """
        XCTAssertEqual(expectedDump, document.format())
    }
}
