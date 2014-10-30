#function random engineername.
def pick_engineer
   """
   Function: pick_engineer
   Description: pick an engineer name from file.
   """
   engineers = File.open('engineers.txt').read.split("\n")
   engineer_name = engineers[Random.rand(0...engineers.size())]
end

def featureA (name)
   name.to_s.gsub(' ','.') #puts pick_engineer
end

def feature_b(pick_engineer)
   index = pick_engineer.split #split name and lastname in array	
   index[0]+" "+index[1].chr+"..." #show name and first character lastname and ...
end

if __FILE__ == $0
   name_e = pick_engineer
   puts name_e #print engineer name
   puts featureA(name_e) #show engineer name from featureA
   puts feature_b(name_e) #show engineer name from feature_b
end
