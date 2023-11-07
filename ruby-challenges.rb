# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }
# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 

# Pseudo code:
# Define a method called all_states that takes a hash as input
# Input: Hash
# Output: Array (no nested arrays)
# Take the values of the input hash (hash.values)
# Use .flatten on states to create one array with no nested arrays
# Use .sort to sort the contents of that array alphabetically

def all_states hash
    (hash.values).flatten!.sort!
end

p all_states us_states

# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.

# Pseudo code:
# Define a class called Bike
# Set the class to take one argument for the object's model, which will be a string
# Initialize the class with a default value for wheels, which will be the number 2
# Initialize the class with a default value for current_speed, which will be the number 0
# Define a method within the class called bike_info that returns a string containing the attributes of the object

# class Bike
#     def initialize model
#         @model =  model
#         @wheels = 2
#         @current_speed = 0
#     end

#     def bike_info
#         "My #{@wheels}-wheel #{@model} bicycle is currently travelling at #{@current_speed} mph."
#     end
# end

# bike = Bike.new('Huffy')
# p bike.bike_info

# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

# Pseudo code:
# Define a method within the class Bike called pedal_faster that can accept a number as an argument
# Take the number provided as argument and add it to the object's current_speed attribute
# Define a method within the class Bike called brake that can accept a number as an argument
# Take the number provided as arguemnt and subtract it from the object's current_speed attribute
# As part of the brake method, if current_speed becomes negative, set it back to 0.

class Bike
    def initialize model
        @model =  model
        @wheels = 2
        @current_speed = 0
    end

    def bike_info
        "My #{@wheels}-wheel #{@model} bicycle is currently travelling at #{@current_speed} mph."
    end

    def pedal_faster num
        @current_speed += num
    end

    def brake num
        @current_speed -= num
        if @current_speed < 0
            @current_speed = 0
        end
    end
end

bike = Bike.new('Huffy')
p bike.bike_info
bike.pedal_faster 10
p bike.bike_info
bike.brake 7
p bike.bike_info
bike.brake 5
p bike.bike_info