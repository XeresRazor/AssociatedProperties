//
//  MYModelClass+Associated.m
//  AssociatedObjectTest
//
//  Created by Green2, David on 4/18/13.
//  Copyright (c) 2013 digital-worlds. All rights reserved.
//

#import "MYModelClass+Associated.h"
#import "NSObject+AssociatedProperties.h"

@implementation MYModelClass (Associated)
@dynamic associatedString;

+(void)load {
	[self addAssociatedPropertyNamed:@"associatedString" associationPolicy:OBJC_ASSOCIATION_RETAIN_NONATOMIC];
}
@end
