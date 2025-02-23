//
//  Date+Extensions.swift
//  english-vocabulary
//
//  Created by 오영석 on 2/23/25.
//

import Foundation

extension Date {
    /// ISO 8601 형식의 날짜 문자열을 `Date`로 변환
    static func fromISO8601(_ dateString: String) -> Date? {
        let dateFormatter = ISO8601DateFormatter()
        dateFormatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        return dateFormatter.date(from: dateString)
    }

    /// `Date`를 ISO 8601 문자열로 변환
    func toISO8601String() -> String {
        let dateFormatter = ISO8601DateFormatter()
        dateFormatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        return dateFormatter.string(from: self)
    }

    /// 특정 포맷의 문자열을 `Date`로 변환 (예: "yyyy-MM-dd HH:mm:ss")
    static func fromString(_ dateString: String, format: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        return dateFormatter.date(from: dateString)
    }

    /// `Date`를 특정 포맷의 문자열로 변환
    func toString(format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        return dateFormatter.string(from: self)
    }
}
