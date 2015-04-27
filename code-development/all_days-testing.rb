#!/usr/bin/env ruby

require 'date'

def every_meet_day(meet_days,start_date,end_date)

  all_days = ['']
  i = 0

  meet_days.each do | this_day |

    loop_date = start_date

    while loop_date.wday < this_day
      loop_date = Date.jd(loop_date.jd + 1)
    end

    while loop_date < end_date
      all_days[i] = loop_date
      loop_date = Date.jd(loop_date.jd + 7)
      i = i + 1
    end
  end
  return all_days.sort
end


# Example of using the method
# [1,6] = meet days of “Monday” and “Saturday”

all_days = every_meet_day( [1,6], Date.parse( '2015-01-12' ), Date.parse( '2015-02-09' ) )

all_days.each do | that_day |
  puts "#{that_day} – #{Date::DAYNAMES[that_day.wday]}"
end
