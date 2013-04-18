//
//  AssociatedProperties.h
//  AssociatedObjectTest
//
//  Created by David Green on 4/18/13.
//  Copyright (c) 2013 David Green. All rights reserved.
//

#ifndef AssociatedObjectTest_AssociatedProperties_h
#define AssociatedObjectTest_AssociatedProperties_h
#import <objc/runtime.h>

#define ConfigureForAssociatedProperties \
+(BOOL)addAssociatedPropertyNamed:(NSString *)propertyName associationPolicy:(objc_AssociationPolicy)policy {\
	NSString *setterName = [@"set" stringByAppendingFormat:@"%@:",[propertyName stringByReplacingCharactersInRange:NSMakeRange(0, 1) withString:[[propertyName substringToIndex:1] uppercaseString]]];\
	SEL setterSelector = NSSelectorFromString(setterName);\
	IMP setter = imp_implementationWithBlock(^(id _self, id _object){\
		objc_setAssociatedObject(_self, setterSelector, _object, policy);\
	});\
	IMP getter = imp_implementationWithBlock(^(id _self){\
		return objc_getAssociatedObject(_self,setterSelector); \
	});\
	BOOL createdSetter = class_addMethod([self class], setterSelector, setter, "v@:@");\
	BOOL createdGetter = class_addMethod([self class], NSSelectorFromString(propertyName), getter, "@@:");\
	return createdGetter && createdSetter;\
}

#endif
