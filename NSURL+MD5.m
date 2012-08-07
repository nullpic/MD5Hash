/*
 * NSURL+MD5.m
 *
 * Copyright (c) 2012, WangLin <wanglin4ios@gmail.com>.
 *
 * This library is free software,
 * it is distributed in the hope that it will be useful,
 * you can redistribute it and/or modify it free as you like 
 *
 */

#import "NSURL+MD5.h"

@implementation NSURL (MD5)

- (NSString *) MD5Hash{
    
	NSFileHandle *handle = [NSFileHandle fileHandleForReadingFromURL:self error:nil];
	if (handle == nil) {
		return nil;
	}
	
	CC_MD5_CTX md5;
	CC_MD5_Init (&md5);
	
	BOOL done = NO;
	
	while (!done) {
        @autoreleasepool {
            NSData *fileData = [[NSData alloc] initWithData: [handle readDataOfLength: 4096]];
            CC_MD5_Update (&md5, [fileData bytes], (int)[fileData length]);
            
            if ([fileData length] == 0) {
                done = YES;
            }
        }
		
	}
	
	unsigned char digest[CC_MD5_DIGEST_LENGTH];
	CC_MD5_Final (digest, &md5);
	NSString *s = [NSString stringWithFormat: @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
				   digest[0],  digest[1],
				   digest[2],  digest[3],
				   digest[4],  digest[5],
				   digest[6],  digest[7],
				   digest[8],  digest[9],
				   digest[10], digest[11],
				   digest[12], digest[13],
				   digest[14], digest[15]];
    
	return s;
}

@end
