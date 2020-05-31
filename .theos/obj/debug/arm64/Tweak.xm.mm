#line 1 "Tweak.xm"

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
static void (*_logos_orig$_ungrouped$CCUIContentModuleContentContainerView$setFrame$)(_LOGOS_SELF_TYPE_NORMAL CCUIContentModuleContentContainerView* _LOGOS_SELF_CONST, SEL, CGRect); static void _logos_method$_ungrouped$CCUIContentModuleContentContainerView$setFrame$(_LOGOS_SELF_TYPE_NORMAL CCUIContentModuleContentContainerView* _LOGOS_SELF_CONST, SEL, CGRect); 

#line 1 "Tweak.xm"
@interface CCUIContentModuleContentContainerView : UIView {
	UIView * _view;
}

@end

static void _logos_method$_ungrouped$CCUIContentModuleContentContainerView$setFrame$(_LOGOS_SELF_TYPE_NORMAL CCUIContentModuleContentContainerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGRect arg1) {
	
	

	
	CGRect original = arg1;
	
	CGRect newFrame = CGRectMake(original.origin.x + 58, original.origin.y - 155.5, original.size.width, original.size.height);
	
	_logos_orig$_ungrouped$CCUIContentModuleContentContainerView$setFrame$(self, _cmd, newFrame);
	
}
















































































static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CCUIContentModuleContentContainerView = objc_getClass("CCUIContentModuleContentContainerView"); MSHookMessageEx(_logos_class$_ungrouped$CCUIContentModuleContentContainerView, @selector(setFrame:), (IMP)&_logos_method$_ungrouped$CCUIContentModuleContentContainerView$setFrame$, (IMP*)&_logos_orig$_ungrouped$CCUIContentModuleContentContainerView$setFrame$);} }
#line 99 "Tweak.xm"
