def pick_engineer
   """
   Function: pick_engineer
   Description: pick an engineer name from file.
   """
   engineers = File.open('engineers.txt').read.split("\n")
   engineer_name = engineers[Random.rand(0...engineers.size())]
end
name = pick_engineer
def featureA (name)
   #puts pick_engineer
   name.to_s.gsub(' ','.')
end

if __FILE__ == $0
   puts name #print engineer name
   puts featureA(name)
end
