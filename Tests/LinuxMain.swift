//import XCTest
//@testable import DeckOfPlayingCardsTests
//
//XCTMain([
//    testCase(DeckOfPlayingCardsTests.allTests),
//])
import DeckOfPlayingCardsTests
import XCTest

var tests = [XCTestCaseEntry]()
tests += DeckOfPlayingCardsTests.allTests()
XCTMain(tests)
