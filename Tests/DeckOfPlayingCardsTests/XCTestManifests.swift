//
//  XCTestManifests.swift
//  DeckOfPlayingCards
//
//  Created by  on 2019/2/16.
//

import XCTest

#if os(macOS) || os(iOS)
#else

public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(DeckTest.allTests),
    ]
}

#endif
