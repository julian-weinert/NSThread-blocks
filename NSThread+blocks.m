//
//  NSThread+blocks.m
//
//  Created by Julian Weinert on 12.07.13.
//  Copyright (c) 2013 Julian Weinert.
//
//    This program is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 2 of the License, or
//    (at your option) any later version.
//
//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with this program.  If not, see <http://www.gnu.org/licenses/>.

#import "NSThread+blocks.h"

@implementation NSThread (blocks)

+ (void)_invokeBlock:(void (^)())aBlock {
	if (aBlock) {
		aBlock();
	}
}

+ (void)detachNewThreadBlock:(void (^)())aBlock {
	[self detachNewThreadSelector:@selector(_invokeBlock:) toTarget:[NSThread class] withObject:aBlock];
}

@end
