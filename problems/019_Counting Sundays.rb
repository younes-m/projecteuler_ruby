"""
problem 19, Counting Sundays :

You are given the following information, but you may prefer to do some research for yourself.

    1 Jan 1900 was a Monday.
    Thirty days has September,
    April, June and November.
    All the rest have thirty-one,
    Saving February alone,
    Which has twenty-eight, rain or shine.
    And on leap years, twenty-nine.
    A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.

How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
"""


class ProblemDate
  attr_accessor :day, :month, :year

  def initialize
    @day = 1
    @month = 1
    @year = 1900
    @weekday = 0
  end

  def next
    incrementDay
    incrementWeekday
    #puts "#{@day} / #{@month} / #{@year}"
  end

  def incrementDay
    @day += 1

    if @day == 29 and @month == 2 and not leapYear?
      nextMonth
    elsif @day == 30 and @month == 2 and leapYear?
      nextMonth
    elsif @day == 31 and [4,6,9,11].include?(@month)
      nextMonth
    elsif @day  == 32
      nextMonth
    end
  end

  def nextMonth
    @day = 1
    incrementMonth
  end

  def incrementMonth
    @month += 1
    if @month == 13
      @month = 1
      incrementYear
    end
  end

  def incrementYear
    @year += 1
  end

  def incrementWeekday
    @weekday = (@weekday+1)%7
  end

  def weekday
    {0 => 'monday', 1 => 'tuesday', 2=> 'wednesday', 3 => 'thursday', 4 => 'friday', 5 => 'saturday', 6 => 'sunday'}[@weekday]
  end


  def leapYear?
    return true if @year % 400 == 0
    return false if @year % 100 == 0
    @year % 4 == 0
  end


end

def count_important_sundays(important_sundays = 0)
  d = ProblemDate.new
  loop do
    d.next

    if d.day == 1 and d.weekday == 'sunday' and d.year > 1900
      puts "#{d.day} / #{d.month} / #{d.year} is sunday"
      important_sundays += 1
    end

    if d.day == 31 and d.month == 12 and d.year == 2000
      return important_sundays
    end
  end
end

start = Time.now

puts count_important_sundays

finish = Time.now
puts finish - start
