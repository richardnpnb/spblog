module ApplicationHelper

def get_season()
	# Object that retrieves date information
	# Also retrieve year, day, wday (0 - 6), yday (0 - 365), 
	# hour (24), min (59), sec (59), zone (Time Zone)
	time = Time.new

	if(time.month >= 3) && (time.month <= 5)
			"Yeah it is Spring"
	elsif (time.month > 5) && (time.month <= 8)
			"Everyone Loves Summer"
	elsif (time.month > 8) && (time.month <= 10)
			"Put on Your Coat because Fall is here"
	else
			"Yuck Winter"
	end
end
  			
# Gives max_value a default value of 10 if no attribute is passed
def get_random_number(max_value = 10)
	rand(max_value)
end

def get_random_welcome()
	opening = ["What a beautiful day. ",
        "Welcome to our site. ",
        "Thank you for stopping by. "]

	middle = ["We hope you find what you need. ",
        "We have a wide selection.  ",
        "Check out our sale items. "]

	ending = ["Contact us if you need help. ",
        "We are here to server you. ",
        "Call us if you need to 412-555-1212. "]

	"#{opening[rand(3)]} #{middle[rand(3)]}
	#{ending[rand(3)]}"

end

def count_to_10
	x = 2

	number_list = "1"

	loop do
			number_list = number_list + ", " + x.to_s
		x += 1
			break if x > 10
	end
	"#{number_list}"
end


  	
end
