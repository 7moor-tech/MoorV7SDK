//
//  QMClient.h
//  moorV7SDK
//
//  Created by lishuijiao on 2021/1/5.
//

#import <Foundation/Foundation.h>
#import "QMMessageDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@class QMClientModel;
@class QMClient;

@protocol QMClientDelegate <NSObject>

@end

typedef void(^QMServerConnectBlock)(QMClient *client);

@interface QMClient : NSObject

@property (nonatomic, strong) id<QMClientDelegate> delegete;

@property (nonatomic, strong) QMServerConnectBlock serverConnectBlock;

+ (instancetype)shared;

- (void)initSDK:(void(^)(QMClientModel *server))block;

- (void)initSDK:(id<QMRegisterDelegate>)delegate block:(void(^)(QMClientModel *server))block;

- (void)disconnectSocket;

@end

NS_ASSUME_NONNULL_END
