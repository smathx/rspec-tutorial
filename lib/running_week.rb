class RunningWeek
  def initialize week, log
    raise "Day is not Monday" unless week.wday == 1
    @this_week = week
    @log = log
  end

  def runs
    @log.select do |e|
      (@this_week..@this_week + 7).cover? e.timestamp
    end
  end

  def first_run
    runs.sort_by(&:timestamp).first
  end

  def count
    runs.size
  end

  def average_distance
    runs.map(&:distance).reduce(0) { |sum, e| sum + e } / count
  end
end
