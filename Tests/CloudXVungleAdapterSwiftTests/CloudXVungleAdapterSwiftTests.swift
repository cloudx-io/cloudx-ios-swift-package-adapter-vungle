import CloudXVungleAdapter
import CloudXVungleAdapterPackage
import XCTest

final class CloudXVungleAdapterSwiftTests: XCTestCase {
    func testAdapterIsLinkedAndRegistered() {
        XCTAssertEqual(CLXVungleAdapterVersion, "7.7.4.0")
        XCTAssertNotNil(NSClassFromString("CLXVungleInitializer"))
    }
}
