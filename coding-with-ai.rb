# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.

# Add comments to each line to explain the code.

taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco'] #decalres a variable called taco_votes that contains a series of strings varying cases

#declares a variable called totals that contains the results of .reduce method being called on the taco_votes variable
#the .reduce method is being passed Hash.new(0) which ensures that each string being counted starts at 0 in the hash instead of nil
#the .reduce method is also being passed a do block with two parameters: result, which is the hash holding the output of .reduce and vote, which is the current value of the array taco_votes that .reduce is acting on
totals = taco_votes.reduce(Hash.new(0)) do |result, vote|
  result[vote.downcase] += 1 #the result hash is then accessed and string held by the vote parameter is located among result's key and its value is incremented by 1
  result #we then return the result hash in its entirety
end #and end the do block

p totals #the totals variable is then printed which returns the result hash in its entirety as it is the last line of the .reduce method being called

#"You have received a list of users' favorite tacos. Using Ruby, write the code that will create a hash containing all of the different tacos listed and the number of votes each kind received."