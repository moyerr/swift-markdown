import XCTest
import Markdown
@testable import MarkdownBuilder

final class BlockMarkupBuilderTests: XCTestCase {
    func testExample() throws {
        let document = Document {
            Paragraph {
                Text("First")
            }
            Paragraph {
                Text("Second")
            }
        }
        let expectedDump = """
            Document
            ├─ Paragraph
            │  └─ Text "First"
            └─ Paragraph
               └─ Text "Second"
            """
        XCTAssertEqual(expectedDump, document.debugDescription())
    }
}
