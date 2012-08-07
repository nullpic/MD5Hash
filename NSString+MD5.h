/*
 * NSString+MD5.h
 *
 * Copyright (c) 2012, WangLin <wanglin4ios@gmail.com>.
 *
 * This library is free software,
 * it is distributed in the hope that it will be useful,
 * you can redistribute it and/or modify it free as you like
 *
 */

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>

@interface NSString (MD5)

- (NSString *) MD5Hash;

@end

