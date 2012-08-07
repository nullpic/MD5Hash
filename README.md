MD5Hash
=======
NSString/NSURL category for generating MD5 digest for a string or a file.

Usage
=====
- NSString

```objective-c
#import "NSString+MD5.h"

NSString *string=@"string";
NSString *hash=[string MD5Hash];
```
- NSURL

```objective-c
#import "NSURL+MD5.h"

NSURL *url=[NSURL URLWithString:@"file://localhost/Users/Shared/file.pdf"];
NSString *hash=[url MD5Hash];
```



