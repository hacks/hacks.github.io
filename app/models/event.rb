class Event < ActiveRecord::Base
  validates :name, :presence => true
  validates :start_time, :presence => true
  validates :end_time, :presence => true

  scope :upcoming, where("end_time >= ?", Date.today).order("start_time asc")
  scope :happened, where("end_time < ?", Date.today).order("end_time desc")

  # Helps make quick datestamps
  # "Feb 23rd at 4:30pm"
  def self.stamp_date(datetime, date_format="Feb 9th", time_format="7 pm")
    "#{datetime.to_date.stamp(date_format)} at #{datetime.to_time.stamp(time_format)}"
  end

  def when_it_starts
    Event.stamp_date(self.start_time)
  end

  def when_it_ends
    Event.stamp_date(self.end_time)
  end

  # Nice stamp for quick slugs
  # "Thursday, Feb 23, from 7pm to 11pm"
  def when
    sd = self.start_time.to_date
    ed = self.end_time.to_date

    st = self.start_time.to_time
    et = self.end_time.to_time

    if (sd == ed)
      # Thursday, Feb 9th, 7 pm to 11 pm
      "#{sd.stamp("Thursday Feb 9th")}, #{st.stamp("7:00 pm")} to #{et.stamp("9:30 pm")}"
    else
      # 7pm Thursday, Feb 9th, to 11pm Feb 11th
      "#{st.stamp("7:30 pm")} #{sd.stamp("Feb 9th")}, to #{et.stamp("7:30 pm")} #{et.stamp("Feb 9th")}"
    end
  end
end
