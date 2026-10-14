@import CloudXVungleAdapter;
@import CloudXVungleAdapterPackage;
@import XCTest;

@interface CloudXVungleAdapterObjCTests : XCTestCase
@end

@implementation CloudXVungleAdapterObjCTests

- (void)testAdapterIsLinkedAndRegistered {
    XCTAssertEqualObjects(CLXVungleAdapterVersion, @"7.7.6.1");
    XCTAssertNotNil(NSClassFromString(@"CLXVungleInitializer"));
}

@end
