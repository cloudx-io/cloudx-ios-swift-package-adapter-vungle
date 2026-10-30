import CloudXVungleAdapter
import CloudXVungleAdapterPackage
import XCTest

final class CloudXVungleAdapterSwiftTests: XCTestCase {
    func testAdapterIsLinkedAndRegistered() {
        XCTAssertEqual(CLXVungleAdapterVersion, "7.7.8.0")
        XCTAssertNotNil(NSClassFromString("CLXVungleInitializer"))
    }
}
