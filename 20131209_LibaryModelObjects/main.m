//
//  main.m
//  20131209_LibaryModelObjects
//
//  Created by Ivan on 12/9/13.
//  Copyright (c) 2013 Ivan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Library.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Library *theLibrary = [[Library alloc] initWithName:@"New Library"];
        
        Shelf   *theShelf   = [[Shelf alloc] initWithShelfName:@"New Shelf"];
        Shelf   *secondShelf = [[Shelf alloc] initWithShelfName:@"Second Shelf"];
        
        [theLibrary addShelf:theShelf];
        [theLibrary addShelf:secondShelf];
        
        Book *newBook = [[Book alloc] initWithTitle:@"Title" author:@"Author" category:@"Category"];
        Book *twilight = [[Book alloc] initWithTitle:@"Twilight" author:@"Author" category:@"Category"];
        Book *harryPotter = [[Book alloc] initWithTitle:@"Harry Potter" author:@"J.K. Rowling" category:@"Teen"];
        
        [newBook addToShelf:theShelf];
        [twilight addToShelf:theShelf];
        [harryPotter addToShelf:secondShelf];
        
        int bookCounter = 0;
        
        NSMutableArray *libraryShelves = theLibrary.shelves;
        
        for (Shelf *aShelf in libraryShelves) {
            for (Book *aBook in libraryShelves) {
                bookCounter++;
            }
        }
        
        NSLog(@"The Library contains %d books", bookCounter);
        
        [theLibrary displayAllBooksInLibrary];
        
    }
    return 0;
}

