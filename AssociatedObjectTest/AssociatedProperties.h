//
//  AssociatedProperties.h
//  AssociatedObjectTest
//
//  Created by Green2, David on 4/18/13.
//  Copyright (c) 2013 digital-worlds. All rights reserved.
//

#ifndef AssociatedObjectTest_AssociatedProperties_h
#define AssociatedObjectTest_AssociatedProperties_h
#import <objc/runtime.h>


#define GenerateSetter(_type_, _name_, _memoryrule_) void _name_##SetIMPL(id self, SEL _cmd, _type_ value) {objc_setAssociatedObject(self, &_name_##SetIMPL, value, _memoryrule_);}
#define GenerateGetter(_type_, _name_, _memoryrule_) _type_ _name_##GetIMPL(id self, SEL _cmd) {return objc_getAssociatedObject(self, &_name_##SetIMPL);}
#define AssociatedObjectFunctions(_type_, _name_, _memoryrule_) \
	GenerateSetter(_type_, _name_, _memoryrule_) \
	GenerateGetter(_type_, _name_, _memoryrule_)

#define AssociatedObjectAddMethods(_name_)\
	class_addMethod([self class], NSSelectorFromString([@"set" stringByAppendingFormat:@"%@:",[@#_name_ stringByReplacingCharactersInRange:NSMakeRange(0, 1) withString:[[@#_name_ substringToIndex:1] uppercaseString]]]), (IMP)_name_##SetIMPL, "v@:@"); \
	class_addMethod([self class], NSSelectorFromString(@#_name_), (IMP)_name_##GetIMPL, "@@:");
	
#endif
