//
//  DatabaseManager.h
//  iOS_Project
//
//  Created by JUNGHYEON KIM on 2014-07-22.
//  Copyright (c) 2014 Group A of IPCT, Lambton College. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface DatabaseManager : NSObject
{
    NSString *databasePath;
}

+(DatabaseManager*)getSharedInstance;
-(BOOL)createDB;
-(BOOL) saveData:(NSString*)fistName lastName:(NSString*)lastName phone:(NSString*)phone email:(NSString*)email;
-(NSArray*) findByFirstName:(NSString*)firstName;

@end
