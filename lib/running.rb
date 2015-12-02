require 'date'
require_relative 'running_week'

class Run
  @@log = []

  attr_reader :duration, :distance, :timestamp

  def self.log options
    @@log << new(options)
  end

  def self.count week: nil
    return RunningWeek.new(Date.parse(week), @@log).count if week
    @@log.size
  end

  def initialize options
    @duration  = options[:duration]
    @distance  = options[:distance]
    @timestamp = DateTime.parse options[:timestamp]
  end
end
