import Foundation

var date = Date()
let calendar = Calendar.current
date = calendar.date(bySetting: .day, value: 1, of: date)!
print(date) // This will output the date with the day set to the 1st of the current month
