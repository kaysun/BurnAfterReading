//
//  BRContentItem.h
//  BurnAfterReading
//
//  Created by 孙玲 on 2018/1/28.
//  Copyright © 2018年 qinqin. All rights reserved.
//

typedef enum new{
    BRContentTypeText = 1,//文
    BRContentTypeImageText = 2,//图文
} BRContentType;

@interface BRContentItem : NSObject

@property (nonatomic, copy) NSString *contentId;
@property (nonatomic, copy) NSString *title;//标题
@property (nonatomic, copy) NSString *desc;//外漏的内容
@property (nonatomic, copy) NSString *text;//整理内容
@property (nonatomic, assign) BRContentType type;

@end
