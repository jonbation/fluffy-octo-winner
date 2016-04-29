/**
 * Question Link: https://leetcode.com/problems/meeting-rooms/
 * Primary idea: Sort and traverse, find if any conflicts exist
 * Time Complexity: O(nlogn), Space Complexity: O(1)
 *
 * Definition for an interval.
 * public class Interval {
 *   public var start: Int
 *   public var end: Int
 *   public init(_ start: Int, _ end: Int) {
 *     self.start = start
 *     self.end = end
 *   }
 * }
 */
 
class MeetingRooms {
    func canAttendMeetings(intervals: [Interval]) -> Bool {
        if intervals.count < 2 {
            return true
        }
        
        var intervals = intervals.sort({$0.start < $1.start})
        
        for i in 0 ... intervals.count - 2 {
            if intervals[i].end > intervals[i + 1].start {
                return false
            }
        }
        
        return true
    }
}