@interface CCUIContentModuleContentContainerView : UIView {
	UIView * _view;
}

@end
%hook CCUIContentModuleContentContainerView
-(void)layoutSubViews{
	%orig;
	UIView * myView = MSHookIvar<UIView *>(self, "_view");
	myView = [[UIView alloc] initWithFrame: CGRectMake(85,-182.5,153,153)];
}
%end