Notes for the presentation: Auto Layout in iOS 6

1. The problem with springs and struts

	- Autosizing masks
	- Demo
	- Solutions (write by code, 2 xibs)
	- Demo
    - iPhone 5 support

2. Auto Layout

    - Auto layout concept
    - Constraints
    - Intrinsic content size
    - Content Compression Resistance, Content Hugging Priority
    - User constraints
    - Constrains from code
    - Runtime errors (ambiguous, unsatisfiable)

3. Migrating from springs and struts

---------

 po [[UIWindow keyWindow] _autolayoutTrace]
 NSLayoutContraint
 https://developer.apple.com/library/mac/#documentation/UserExperience/Conceptual/AutolayoutPG/Articles/Introduction.html

//unsatisfiable constraint
 cnArray = [NSLayoutConstraint constraintsWithVisualFormat:@"[lbl1]-50-[lbl2]" options:NSLayoutFormatAlignAllBaseline metrics:nil views:viewsDict];
    [self.subView addConstraints:cnArray];
