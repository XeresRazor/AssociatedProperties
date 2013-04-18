//
//  main.m
//  AssociatedObjectTest
//
//  Created by Green2, David on 4/18/13.
//  Copyright (c) 2013 digital-worlds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MYModelClass+Associated.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    
	    // insert code here...
	    NSLog(@"Hello, World!");
		MYModelClass *myModel = [[MYModelClass alloc] init];
		myModel.nativeString = @"Native String";
		myModel.nativeNumber = @42;
		
		NSLog(@"Native string: %@\nNative Number: %@", myModel.nativeString, myModel.nativeNumber);
		
		myModel.associatedString = @"Some Associated String";
		NSLog(@"The associated String: %@", myModel.associatedString);
	    
	}
    return 0;
}

