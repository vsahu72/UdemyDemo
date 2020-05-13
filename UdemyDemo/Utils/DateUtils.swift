//
//  DateUtils.swift
//  BaseProject
//
//  Created by vikash sahu on 02/04/20.
//  Copyright © 2020 Aripra. All rights reserved.
//

import Foundation

let Date_formate = "yyyy-MM-dd HH:mm:ss"

extension Date {
    
    func toString(style: DateFormatter.Style) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = style
        return dateFormatter.string(from: self)
    }
    
    func toString(withFormat format: String = Date_formate) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        let myString = formatter.string(from: self)
        let yourDate = formatter.date(from: myString)
        formatter.dateFormat = format
        return formatter.string(from: yourDate!)
    }
    
    func next(by :Calendar.Component , value : Int = 1) -> Date? {
        return Calendar.current.date(byAdding: by, value: value, to: self)
    }
    
    func previous(by :Calendar.Component, value : Int = 1) -> Date? {
        return Calendar.current.date(byAdding: by, value: -value, to: self)
    }
    
    
}


extension String {

    func toDate(withFormat format: String = Date_formate)-> Date?{

        let dateFormatter = DateFormatter()
       // dateFormatter.timeZone = TimeZone(identifier: "Asia/Tehran")
       // dateFormatter.locale = Locale(identifier: "fa-IR")
        dateFormatter.calendar = Calendar(identifier: .gregorian)
        dateFormatter.dateFormat = format
        let date = dateFormatter.date(from: self)

        return date

    }
    
    func nextDate(by :Calendar.Component , value : Int = 1 , withFormat format: String = Date_formate) -> String? {
        let date = self.toDate()?.next(by: by , value: value)
        return date?.toString()
    }
    
    func previousDate(by :Calendar.Component , value : Int = 1 , withFormat format: String = Date_formate) -> String? {
        let date = self.toDate()?.previous(by: by, value: value)
        return date?.toString()
    }
    
    func curretDate(withFormat format: String = Date_formate)-> String{
        return Date().toString(withFormat: format)
    }
    
}
