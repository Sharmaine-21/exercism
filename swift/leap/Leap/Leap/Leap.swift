//
//  Leap.swift
//  Leap
//
//  Created by Jason Lewis on 6/14/15.
//  Copyright (c) 2015 Exercism. All rights reserved.
//

import Foundation

class Year {
    
    var calendarYear: Int32;
    
    init(
    
    func isLeapYear(year: Int) {
        if (year % 400 == 0) {
            true;
        } else if ((year % 4 == 0) && (year % 100 != 0)) {
            true;
        } else {
            false;
        }
    }
    
}