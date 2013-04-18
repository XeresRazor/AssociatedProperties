//
//  NSObject+AssociatedProperties.m
//  AssociatedObjectTest
//
//  Created by Green2, David on 4/18/13.
//  Copyright (c) 2013 digital-worlds. All rights reserved.
//

#import "NSObject+AssociatedProperties.h"

@implementation NSObject (AssociatedProperties)

+(BOOL)addAssociatedPropertyNamed:(NSString *)propertyName associationPolicy:(objc_AssociationPolicy)policy {
	NSString *setterName = [@"set" stringByAppendingFormat:@"%@:",[propertyName stringByReplacingCharactersInRange:NSMakeRange(0, 1) withString:[[propertyName substringToIndex:1] uppercaseString]]];
	SEL setterSelector = NSSelectorFromString(setterName);
	IMP setter = imp_implementationWithBlock(^(id _self, id _object){
		objc_setAssociatedObject(_self, setterSelector, _object, policy);
	});
	IMP getter = imp_implementationWithBlock(^(id _self){
		return objc_getAssociatedObject(_self,setterSelector);
	});
	// Add the setter
	BOOL createdSetter = class_addMethod([self class], setterSelector, setter, "v@:@");
	BOOL createdGetter = class_addMethod([self class], NSSelectorFromString(propertyName), getter, "@@:");
	return createdGetter && createdSetter;
}

@end
