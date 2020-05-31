@interface CCUIContentModuleContentContainerView : UIView {
	UIView * _view;
}
@property (nonatomic, assign) NSString *moduleIdentifier;
@end

%hook CCUIContentModuleContentContainerView

- (void)layoutSubViews {

	%orig;
	
	NSArray *allViews = MSHookIvar<NSArray *>(self, "_views");
	
	for (UIView *subView in allViews) {
		
		if ([subView respondsToSelector:@selector(setBackgroundColor:)) {
		
			[subView setBackgroundColor:[UIColor redColor]];
		
		}
	
	}
	
}
%end
