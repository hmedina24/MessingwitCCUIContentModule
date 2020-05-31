#line 1 "Tweak.xm"
@interface CCUIContentModuleContentContainerView : UIView {
	UIView * _view;
}
@property (nonatomic, assign) NSString *moduleIdentifier;
@end


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class CCUIContentModuleContentContainerView; 
static void (*_logos_orig$_ungrouped$CCUIContentModuleContentContainerView$layoutSubViews)(_LOGOS_SELF_TYPE_NORMAL CCUIContentModuleContentContainerView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$CCUIContentModuleContentContainerView$layoutSubViews(_LOGOS_SELF_TYPE_NORMAL CCUIContentModuleContentContainerView* _LOGOS_SELF_CONST, SEL); 

#line 7 "Tweak.xm"


static void _logos_method$_ungrouped$CCUIContentModuleContentContainerView$layoutSubViews(_LOGOS_SELF_TYPE_NORMAL CCUIContentModuleContentContainerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {

	_logos_orig$_ungrouped$CCUIContentModuleContentContainerView$layoutSubViews(self, _cmd);
	
	UIView * myView = MSHookIvar<UIView *>(self, "_containerView");
	
	CGRect newFrame = myView.bounds;
	
	newFrame.origin.x = myView.bounds.origin.x + 58;
	
	if ([self.moduleIdentifier isEqualToString:@"com.apple.control-center.ConnectivityModule"]) {
	
		[myView setFrame:newFrame];
	
	}
	
	
	
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CCUIContentModuleContentContainerView = objc_getClass("CCUIContentModuleContentContainerView"); MSHookMessageEx(_logos_class$_ungrouped$CCUIContentModuleContentContainerView, @selector(layoutSubViews), (IMP)&_logos_method$_ungrouped$CCUIContentModuleContentContainerView$layoutSubViews, (IMP*)&_logos_orig$_ungrouped$CCUIContentModuleContentContainerView$layoutSubViews);} }
#line 29 "Tweak.xm"
