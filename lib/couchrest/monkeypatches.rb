
# this file must be loaded after the JSON gem

class Time
  # This date format sorts lexicographically
  # and is compatible with Javascript's new Date(time_string) constructor.
  # Note this this format stores all dates in UTC so that collation 
  # order is preserved. (There's no longer a need to set ENV['TZ'] = 'UTC' 
  # in your application.)

  def to_json(options = nil)
    u = self.utc
    %("#{u.strftime("%Y/%m/%d %H:%M:%S +0000")}")
  end

  # Decodes the JSON time format to a UTC time.
  # Based on Time.parse from ActiveSupport. ActiveSupport's version
  # is more complete, returning a time in your current timezone, 
  # rather than keeping the time in UTC. YMMV.
  # def self.parse string, fallback=nil
  #   d = DateTime.parse(string).new_offset
  #   self.utc(d.year, d.month, d.day, d.hour, d.min, d.sec)
  # rescue
  #   fallback
  # end
end