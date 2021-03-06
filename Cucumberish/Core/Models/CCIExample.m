//
//	CCIExample.m
//
//	Created by Ahmed Ali on 17/1/2016
//  Copyright © 2016 Ahmed Ali. All rights reserved.
//
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "CCIExample.h"

@interface CCIExample ()
@end
@implementation CCIExample




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(dictionary[@"keyword"] != nil && ![dictionary[@"keyword"] isKindOfClass:[NSNull class]]){
        self.keyword = dictionary[@"keyword"];
    }
    if(dictionary[@"location"] != nil && ![dictionary[@"location"] isKindOfClass:[NSNull class]]){
        self.location = [[CCILocation alloc] initWithDictionary:dictionary[@"location"]];
    }
    
    if(dictionary[@"name"] != nil && ![dictionary[@"name"] isKindOfClass:[NSNull class]]){
        self.name = dictionary[@"name"];
    }
    if(dictionary[@"tableBody"] != nil && [dictionary[@"tableBody"] isKindOfClass:[NSArray class]]){
        NSArray * tableBodyDictionaries = dictionary[@"tableBody"];
        NSMutableArray * tableBodyItems = [NSMutableArray array];
        for(NSDictionary * tableBodyDictionary in tableBodyDictionaries){
            CCITableBody * tableBodyItem = [[CCITableBody alloc] initWithDictionary:tableBodyDictionary];
            [tableBodyItems addObject:tableBodyItem];
        }
        self.tableBody = tableBodyItems;
    }
    if(dictionary[@"tableHeader"] != nil && ![dictionary[@"tableHeader"] isKindOfClass:[NSNull class]]){
        self.tableHeader = [[CCITableBody alloc] initWithDictionary:dictionary[@"tableHeader"]];
    }
    
    if(dictionary[@"tags"] != nil && ![dictionary[@"tags"] isKindOfClass:[NSNull class]]){
        self.tags = dictionary[@"tags"];
    }
    if(dictionary[@"type"] != nil && ![dictionary[@"type"] isKindOfClass:[NSNull class]]){
        self.type = dictionary[@"type"];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    if(self.keyword != nil){
        dictionary[@"keyword"] = self.keyword;
    }
    if(self.location != nil){
        dictionary[@"location"] = [self.location toDictionary];
    }
    if(self.name != nil){
        dictionary[@"name"] = self.name;
    }
    if(self.tableBody != nil){
        NSMutableArray * dictionaryElements = [NSMutableArray array];
        for(CCITableBody * tableBodyElement in self.tableBody){
            [dictionaryElements addObject:[tableBodyElement toDictionary]];
        }
        dictionary[@"tableBody"] = dictionaryElements;
    }
    if(self.tableHeader != nil){
        dictionary[@"tableHeader"] = [self.tableHeader toDictionary];
    }
    if(self.tags != nil){
        dictionary[@"tags"] = self.tags;
    }
    if(self.type != nil){
        dictionary[@"type"] = self.type;
    }
    return dictionary;
    
}

/**
 * Implementation of NSCoding encoding method
 */
/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    if(self.keyword != nil){
        [aCoder encodeObject:self.keyword forKey:@"keyword"];
    }
    if(self.location != nil){
        [aCoder encodeObject:self.location forKey:@"location"];
    }
    if(self.name != nil){
        [aCoder encodeObject:self.name forKey:@"name"];
    }
    if(self.tableBody != nil){
        [aCoder encodeObject:self.tableBody forKey:@"tableBody"];
    }
    if(self.tableHeader != nil){
        [aCoder encodeObject:self.tableHeader forKey:@"tableHeader"];
    }
    if(self.tags != nil){
        [aCoder encodeObject:self.tags forKey:@"tags"];
    }
    if(self.type != nil){
        [aCoder encodeObject:self.type forKey:@"type"];
    }
    
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    self.keyword = [aDecoder decodeObjectForKey:@"keyword"];
    self.location = [aDecoder decodeObjectForKey:@"location"];
    self.name = [aDecoder decodeObjectForKey:@"name"];
    self.tableBody = [aDecoder decodeObjectForKey:@"tableBody"];
    self.tableHeader = [aDecoder decodeObjectForKey:@"tableHeader"];
    self.tags = [aDecoder decodeObjectForKey:@"tags"];
    self.type = [aDecoder decodeObjectForKey:@"type"];
    return self;
    
}
@end