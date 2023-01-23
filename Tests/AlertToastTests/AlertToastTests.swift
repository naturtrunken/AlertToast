import XCTest
@testable import AlertToast

final class AlertToastTests: XCTestCase {
    
    func testInit() {
        let toast = AlertToast(type: .error, title: "Title", subTitle: "Subtitle")
        XCTAssertEqual(toast.type, .error)
        XCTAssertEqual(toast.title, "Title")
        XCTAssertEqual(toast.subTitle, "Subtitle")
    }

    static var allTests = [
        ("testInit", testInit),
    ]
}
