//
//  String+Ext.swift
//  GHFollowers
//
//  Created by Anubhav Tomar on 07/07/24.
//

//import Foundation
//
//extension String {
//    
//    func convertToDate() -> Date? {
//        let dateFormatter               = DateFormatter()
//        dateFormatter.dateFormat        = "yyyy-MM-dd'T'HH:mm:ssZ"
//        dateFormatter.locale            = Locale(identifier: "en_IN")
//        dateFormatter.timeZone          = .current
//        
//        return dateFormatter.date(from: self)
//    }
//    
//    
//    func convertToDisplayFormat() -> String {
//        
//        guard let date = self.convertToDate() else { return "N/A" }
//        return date.convertToMonthYearFormat()
//    }
//}
