//
//  NSObject+AssociatedProperties.h
//  AssociatedObjectTest
//
//  Created by Green2, David on 4/18/13.
//  Copyright (c) 2013 digital-worlds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface NSObject (AssociatedProperties)
+(BOOL)addAssociatedPropertyNamed:(NSString *)propertyName associationPolicy:(objc_AssociationPolicy)policy;
@end
