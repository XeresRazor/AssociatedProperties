//
//  main.m
//  AssociatedObjectTest
//
//  Created by Green2, David on 4/18/13.
//  Copyright (c) 2013 digital-worlds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+Associated.h"
#import "NSObject+OtherAssociated.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    
	    // insert code here...
	    NSLog(@"Hello, World!");
		NSObject *myModel = [[NSObject alloc] init];
		
		myModel.associatedString = @"Some Associated String";
		myModel.associatedArray = @[@"Some", @"thing", @"awesome"];
		NSLog(@"The associated String: %@", myModel.associatedString);
		NSLog(@"The associated Array:\n%@", myModel.associatedArray);
	    
	}
    return 0;
}

