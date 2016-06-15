//
//  ODProperties_Test.m
//  ODXCore
//
//  Created by Alex Nazaroff on 15.06.16.
//  Copyright © 2016 AJR. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ODXCore.h"

@interface NSObject (ODProperties_Test)
@property (nonatomic, strong) NSString *od_str;
@end

@implementation NSObject (ODProperties_Test)
@synthesizing_associatedRetainProperty(NSString *, od_str, setOd_str)
@end


@interface ODProperties_Test : XCTestCase
@end

@implementation ODProperties_Test

- (void)testSetProperty {
    XCTAssert([self respondsToSelector:@selector(setOd_str:)]);
    self.od_str = @"A";
    [[self valueForKey:@"od_str"] isEqualToString:@"A"];
}

- (void)testGetProperty {
    XCTAssert([self respondsToSelector:@selector(od_str)]);
    [self setValue:@"B" forKey:@"od_str"];
    
    XCTAssert([self.od_str isEqualToString:@"B"]);
}

@end