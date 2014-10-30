
def pick_engineer
   """
   Function: pick_engineer
   Description: pick an engineer name from file.
   """
   engineers = File.open('engineers.txt').read.split("\n")
   engineer_name = engineers[Random.rand(0...engineers.size())]
end

def feature_b(pick_engineer)
	index = pick_engineer.split #split name and lastname in array	
	index[0]+" "+index[1].chr+"..." #show name and first character lastname and ...
end

if __FILE__ == $0
   puts pick_engineer #print engineer name
   puts feature_b(pick_engineer) #show engineer name from feature_b
end
