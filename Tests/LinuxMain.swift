// Generated using Sourcery 2.2.5 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
@testable import TimeZoneIdentifierTests
import XCTest

// swiftlint:disable line_length file_length

extension TimeZoneIdentifierTest {
    static var allTests: [(String, (TimeZoneIdentifierTest) -> () throws -> Void)] = [
        ("testTimeZoneAsTimeZoneConvertible", testTimeZoneAsTimeZoneConvertible),
        ("testTimeZoneIdentifierCurrent", testTimeZoneIdentifierCurrent),
        ("testTimeZoneIdentifierAutoUpdating", testTimeZoneIdentifierAutoUpdating),
        ("testTimeZoneIdentifierExplicit", testTimeZoneIdentifierExplicit),
        ("testInvalidTimeZone", testInvalidTimeZone)
    ]
}

XCTMain([
    testCase(TimeZoneIdentifierTest.allTests)
])
