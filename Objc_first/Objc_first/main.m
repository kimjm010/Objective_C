//
//  main.m
//  Objc_first
//
//  Created by Chris Kim on 2023/04/03.
//

#import <Foundation/Foundation.h>
@interface Vehicle : NSObject {
    // member variable
    int wheels;
    int seats;
}

-(void)setWheels:(int)w;
-(void)setSeats:(int)s;
-(void)print;

@end

@implementation Vehicle
// 이부분들이 다 각각의 메세지임
-(void)setWheels:(int)w {
    wheels = w;
}

-(void)setSeats:(int)s {
    seats = s;
}

-(void)print {
    NSLog(@"wheels: %i, seats: %i", wheels, seats);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // new를 통해 heap 메모리에 동적할당 + 초기화작업을 동시에 진행함
        // Vehicle *hello = [Vehicle new]; // create instance object
        // objc에서는 메모리 동적 할당과 초기화 작업을 따로 진행함 -> alloc + init
        Vehicle *hello = [[Vehicle alloc]init];
        
        // [Receiver Message] send, sent == invoke
        
        // hello 라는 instacne object에 setWheels라는 메세지를 날릴 것임
        [hello setWheels:4];
        [hello setSeats:2];
        
        [hello print];
    }
    return 0;
}
