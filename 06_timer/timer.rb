class Timer
  def elapsed_time(seconds)
  	hrs = seconds / 3600
  	mins = (seconds % 3600) / 60
  	secs = seconds - (((hrs * 60) + mins) * 60)

  	puts 'hours:' + hrs.to_s + '  minutes:' + mins.to_s + '  seconds:' + secs.to_s

  	if hrs < 1
  		hrs_formatted = '00:'
  	else
  		if hrs < 10
  			hrs_formatted = '0' + hrs.to_s + ':'
  	else
  		hrs_formatted = hrs.to_s + ':'
  		end
  	end

  	if mins < 1
  		mins_formatted = '00:'
  	else
  		if mins < 10
  			mins_formatted = '0' + mins.to_s + ':'
  	else
  		mins_formatted = mins.to_s + ':'
  		end
  	end

  	if secs < 1
  		secs_formatted = '00'
  	else
  		if secs < 10
  			secs_formatted = '0' + secs.to_s
  	else
  		secs_formatted = secs.to_s
  		end
  	end

  	puts hrs_formatted + mins_formatted + secs_formatted

  end
end

=begin
	
class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds/3600
    remainder = @seconds%3600
    sprintf("%02d:%02d:%02d", hours, remainder/60, remainder%60)
  end
  
end

=end
