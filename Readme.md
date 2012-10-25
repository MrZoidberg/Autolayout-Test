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

3. Migrating from springs and struts
------------------------------------

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


