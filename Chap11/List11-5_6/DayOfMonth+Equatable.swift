extension DayOfMonth : Equatable { }

func ==(lhs: DayOfMonth, rhs: DayOfMonth) -> Bool {
    return lhs.month == rhs.month && lhs.day == rhs.day
}
