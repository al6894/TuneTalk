//
//  DateFormatter+Extensions.swift
//  TuneTalk
//
//  Created by Victoria Nunez on 4/19/23.
//

import Foundation

extension DateFormatter {
    static var postFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        return formatter
    }()
}
