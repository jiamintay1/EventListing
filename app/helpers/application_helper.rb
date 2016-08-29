module ApplicationHelper

  def distance(date)
    diff = date - Date.today
    if diff==0
      'Today is the day!'
    elsif diff==1
      'Event is in 1 day!'
    else
      "Event is in #{diff.to_i} days!"
    end
  end

end
