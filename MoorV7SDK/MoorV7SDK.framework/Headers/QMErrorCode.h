//
//  QMErrorCode.h
//  moorV7SDK
//
//  Created by lishuijiao on 2021/1/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 在线客服注册错误的对应码
 */
typedef enum: NSInteger {
    QMRegisterErrorCodeEmptyAccessId    = 4000,     //注册的accessId不能为空
    QMRegisterErrorCodeEmptyUsername    = 4001,     //注册的用户名不能为空
    QMRegisterErrorCodeEmptyUserId      = 4002,     //注册的用户id不能为空
    QMRegisterErrorCodeAccessIdError    = 4003,     //注册的accessId不存在或者错误
    QMRegisterErrorCodeUserIdViolation  = 4004,     //注册的用户id不合法
    QMRegisterErrorCodeConnectFailed    = 4005,     //建立与后台连接失败
    QMRegisterErrorCodeAuthFailed       = 4006,     //校验连接信息失败(含accessId,username,userId)
    QMRegisterErrorCodeServiceException = 4007,     //服务异常
    QMRegisterErrorCodeUnknow           = 4008,     //未知错误
}QMRegisterErrorCode;

@interface QMErrorCode : NSObject

@property (nonatomic, assign) QMRegisterErrorCode errorCode;

@property (nonatomic, retain) NSString *errorDesc;

+ (instancetype)initWithError:(QMRegisterErrorCode)errorCode;

@end

NS_ASSUME_NONNULL_END
