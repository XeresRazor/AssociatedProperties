//
//  MYModelClass+Associated.m
//  AssociatedObjectTest
//
//  Created by David Green on 4/18/13.
//  Copyright (c) 2013 David Green. All rights reserved.
//

#import "NSObject+Associated.h"
#import "AssociatedProperties.h"

@implementation NSObject (Associated)
@dynamic associatedString;

ConfigureForAssociatedProperties;

+(void)load {
	[self addAssociatedPropertyNamed:@"associatedString" associationPolicy:OBJC_ASSOCIATION_RETAIN_NONATOMIC];
}

@end

