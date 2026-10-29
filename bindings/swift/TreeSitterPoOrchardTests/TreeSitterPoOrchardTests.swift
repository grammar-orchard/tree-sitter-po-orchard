import XCTest
import SwiftTreeSitter
import TreeSitterPoOrchard

final class TreeSitterPoOrchardTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_po_orchard())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading po grammar")
    }
}
