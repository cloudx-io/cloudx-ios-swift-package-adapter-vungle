@import CloudXVungleAdapter;
@import CloudXVungleAdapterPackage;
@import XCTest;

@interface CloudXVungleAdapterObjCTests : XCTestCase
@end

@implementation CloudXVungleAdapterObjCTests

- (void)testAdapterIsLinkedAndRegistered {
    XCTAssertEqualObjects(CLXVungleAdapterVersion, @"7.7.8.0");
    XCTAssertNotNil(NSClassFromString(@"CLXVungleInitializer"));
}

@end
