//
//  Copyright © 2023 Alexey Nazarov. Licensed under MIT License.
//

import TimeZoneIdentifier
import XCTest

class TimeZoneIdentifierTest: XCTestCase {
    func testTimeZoneAsTimeZoneConvertible() {
        let timeZone = TimeZone(identifier: "UTC")!
        XCTAssertEqual(timeZone, timeZone.timezone())
    }

    // Test that the .current case for TimeZoneIdentifier returns the current time zone
    func testTimeZoneIdentifierCurrent() {
        let timeZone = TimeZoneIdentifier.current.timezone()
        XCTAssertEqual(timeZone, TimeZone.current)
    }

    // Test that the .autoUpdating case for TimeZoneIdentifier returns the auto-updating current time zone
    func testTimeZoneIdentifierAutoUpdating() {
        let timeZone = TimeZoneIdentifier.autoUpdating.timezone()
        XCTAssertEqual(timeZone, TimeZone.autoupdatingCurrent)
    }

    // Test that an explicit time zone like "Africa/Abidjan" returns the correct TimeZone object
    func testTimeZoneIdentifierExplicit() {
        let timeZone = TimeZoneIdentifier.africaAbidjan.timezone()
        XCTAssertEqual(timeZone, TimeZone(identifier: "Africa/Abidjan"))
    }

    func testInvalidTimeZone() {
       let invalidIdentifier = TimeZoneIdentifier(rawValue: "Invalid")
       XCTAssertNil(invalidIdentifier) // The enum should not allow this
   }
}
