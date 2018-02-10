//
//  testProjectTests.m
//  testProjectTests
//
//  Created by zhangyaowu on 2017/12/16.
//  Copyright © 2017年 zhangyaowu. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface testProjectTests : XCTestCase
@property (nonatomic,strong) ViewController *vc;

@end

@implementation testProjectTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)testMyFuc {
    int result = [self.vc getNum];
    // 如果不相等则会提示@“测试不通过”
    XCTAssertEqual(result, 100,@"测试不通过");
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
