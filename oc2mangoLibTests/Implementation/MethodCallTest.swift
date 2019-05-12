//
//  MethodCallTest.swift
//  oc2mangoLibTests
//
//  Created by Jiang on 2019/5/10.
//  Copyright © 2019年 SilverFruity. All rights reserved.
//

import XCTest

class MethodCallTest: XCTestCase {
    let ocparser = Parser.shared()!
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testMethodCall() {
        let source =
        """
@implementation Demo
- (Demo *)objectMethods{
    [self setValue:self forKey:value forKey:value forKey:value];

}
@end
"""
        ocparser.parseSource(source)
        XCTAssert(ocparser.error == nil)
        print(ocparser.expressions());
        ocparser.clear()
    }


}
