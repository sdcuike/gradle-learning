#import "enunciate-common.h"

@class APINS0DemoResponseDto;
@class APINS0DemoRequestDto;

#ifndef DEF_APINS0DemoResponseDto_H
#define DEF_APINS0DemoResponseDto_H

/**
 * (no documentation provided)
 */
@interface APINS0DemoResponseDto : NSObject
{
  @private
    int *_code;
    NSString *_msg;
}

/**
 * (no documentation provided)
 */
- (int *) code;

/**
 * (no documentation provided)
 */
- (void) setCode: (int *) newCode;

/**
 * (no documentation provided)
 */
- (NSString *) msg;

/**
 * (no documentation provided)
 */
- (void) setMsg: (NSString *) newMsg;
@end /* interface APINS0DemoResponseDto */

#endif /* DEF_APINS0DemoResponseDto_H */
#ifndef DEF_APINS0DemoRequestDto_H
#define DEF_APINS0DemoRequestDto_H

/**
 * (no documentation provided)
 */
@interface APINS0DemoRequestDto : NSObject
{
  @private
    NSString *_name;
    int *_age;
}

/**
 * (no documentation provided)
 */
- (NSString *) name;

/**
 * (no documentation provided)
 */
- (void) setName: (NSString *) newName;

/**
 * (no documentation provided)
 */
- (int *) age;

/**
 * (no documentation provided)
 */
- (void) setAge: (int *) newAge;
@end /* interface APINS0DemoRequestDto */

#endif /* DEF_APINS0DemoRequestDto_H */
