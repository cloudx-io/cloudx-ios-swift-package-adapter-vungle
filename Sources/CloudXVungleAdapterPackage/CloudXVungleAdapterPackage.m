#import <CloudXVungleAdapter/CloudXVungleAdapter.h>

@interface CloudXVungleAdapterPackageLoader : NSObject
@end

@implementation CloudXVungleAdapterPackageLoader

+ (void)load {
    CloudXVungleAdapterRegister();
}

@end
