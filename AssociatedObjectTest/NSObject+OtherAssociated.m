//
//  NSObject+OtherAssociated.m
//  AssociatedObjectTest
//
//  Created by David Green on 4/18/13.
//  Copyright (c) 2013 David Green. All rights reserved.
//

#import "NSObject+OtherAssociated.h"
#import "AssociatedProperties.h"

@implementation NSObject (OtherAssociated)
@dynamic associatedArray;

ConfigureForAssociatedProperties

+(void)load {
	[self addAssociatedPropertyNamed:@"associatedArray" associationPolicy:OBJC_ASSOCIATION_RETAIN_NONATOMIC];
}

@end
