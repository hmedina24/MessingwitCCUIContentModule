@interface CCUIContentModuleContentContainerView : UIView {
	UIView * _view;
}
@property (nonatomic, assign) NSString *moduleIdentifier;
@end

%hook CCUIContentModuleContentContainerView

- (void)layoutSubViews {

	%orig;
	
	UIView * myView = MSHookIvar<UIView *>(self, "_containerView");

	myView.backgroundColor = [UIColor=[red]];
	
	/*CGRect newFrame = myView.bounds;
	
	newFrame.origin.x = myView.bounds.origin.x + 58;
	
	if ([self.moduleIdentifier isEqualToString:@"com.apple.control-center.ConnectivityModule"]) {
	
		[myView setFrame:newFrame];
	
	}*/
	
	// CGRect newFrame = CGRectMake(original.origin.x + 58, original.origin.y - 155.5, original.size.width, original.size.height);
	
}
%end
