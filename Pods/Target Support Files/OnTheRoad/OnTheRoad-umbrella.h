#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "OTRRouting.h"
#import "OTRRoutingController.h"
#import "OTRRoutingPoint.h"
#import "OTRRoutingResult.h"
#import "OTRRoutingResultLeg.h"
#import "OTRRoutingResultManeuver.h"
#import "OTRRoutingTypes.h"

FOUNDATION_EXPORT double OnTheRoadVersionNumber;
FOUNDATION_EXPORT const unsigned char OnTheRoadVersionString[];

