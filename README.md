# NSURLProtocol+WebKitSupport

This example project shows a way to use NSURLProtocol with WKWebView, which was not possible by default.

# Screenshot

![](snapshot.gif)

# Usage

Drag `NSURLProtocol+WebKitSupport.h` and `NSURLProtocol+WebKitSupport.m` into your project, then register the scheme for NSURLProtocol to handle:

```objc
[NSURLProtocol wk_registerScheme:@"https"];

// You can now use your own NSURLProtocol subclasses as before.
[NSURLProtocol registerClass:[MyAwesomeURLProtocol class]];
```

To remove the scheme from registery:

```objc
[NSURLProtocol wb_unregisterScheme:@"https"];
```

# Note

This category uses undocumented APIs in WebKit. By now I don't know if it will get rejected by Apple, but this is very likely. 
