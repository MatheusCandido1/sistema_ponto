class Journey < ApplicationRecord
  belongs_to :user
  before_update :do_journey, :if => :end_journey_changed?
  before_update :do_lunch_time, :if => :lunch_end_changed?

  private 
    def do_journey
    seconds_diff = (self.end_journey - self.start_journey).to_i.abs

    hours = seconds_diff / 3600
    seconds_diff -= hours * 3600

    minutes = seconds_diff / 60
    seconds_diff -= minutes * 60

    seconds = seconds_diff
    self.worked_hours = "#{hours.to_s.rjust(2, '0')}:#{minutes.to_s.rjust(2, '0')}:#{seconds.to_s.rjust(2, '0')}"
  end

  private 
    def do_lunch_time
    seconds_diff = (self.lunch_start - self.lunch_end).to_i.abs

    hours = seconds_diff / 3600
    seconds_diff -= hours * 3600

    minutes = seconds_diff / 60
    seconds_diff -= minutes * 60

    seconds = seconds_diff
    self.lunch_time = "#{hours.to_s.rjust(2, '0')}:#{minutes.to_s.rjust(2, '0')}:#{seconds.to_s.rjust(2, '0')}"
  end
end
