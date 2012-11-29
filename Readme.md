Auto Layout basics
==================

1. The problem with springs and struts
--------------------------------------

+ Autosizing masks
+ Demo
+ Solutions (write by code, 2 xibs)
+ Demo
+ iPhone 5 support

2. Auto Layout
--------------

+ Auto layout concept
+ Constraints
+ Intrinsic content size
+ Content Compression Resistance, Content Hugging Priority
+ User constraints
+ Constrains from code
+ Runtime errors (ambiguous, unsatisfiable)

3. Migrating to auto layout
------------------------------------

+ Partial and full conversion?
+ Convert nibs
+ Review programmatically created views
+ Replace setFrame, etc.

4. References
-------------

+ [Cocoa Auto Layout Guide](https://developer.apple.com/library/mac/#documentation/UserExperience/Conceptual/AutolayoutPG/Articles/Introduction.html)
+ [WWDC 2012 Introduction to Auto Layout for iOS and OS X](https://developer.apple.com/videos/wwdc/2012/?include=202#202)
+ [WWDC 2012 Best Practices for Mastering Auto Layout](https://developer.apple.com/videos/wwdc/2012/?include=228#228)
+ [WWDC 2012 Auto Layout by Example](https://developer.apple.com/videos/wwdc/2012/?include=232#232)

5. Copy&Paste
-------------
    po [[UIWindow keyWindow] _autolayoutTrace]
 
    //unsatisfiable constraint
    cnArray = [NSLayoutConstraint constraintsWithVisualFormat:@"[lbl1]-50-[lbl2]" options:NSLayoutFormatAlignAllBaseline metrics:nil views:viewsDict];
    [self.subView addConstraints:cnArray];

License
-------------

Copyright (c) 2012 by Mikhail Merkulov

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
