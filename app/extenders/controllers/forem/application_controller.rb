# A simple before_filter to the class 
# so that the authenticate_user! method
# is called before every action inside every
# controller that inherits from Forem::ApplicationController
Forem::ApplicationController.class_eval do
	#before_filter :authenticate_user!
end