MD5Hash
=======
NSString/NSURL category for generating MD5 digest for a string or a file.

Usage
=====
- NSString category

```objective-c
NSString *string=@"string";
NSString *hash=[string MD5Hash];
```
- NSURL category

```objective-c
NSURL *url=[NSURL URLWithString:@"file://localhost/Users/Shared/file.pdf"];
NSString *hash=[url MD5Hash];
```



