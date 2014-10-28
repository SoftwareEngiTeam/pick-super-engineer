
def pick_engineer
   """
   Function: pick_engineer
   Description: pick an engineer name from file.
   """
   engineers = File.open('engineers.txt').read.split("\n")
   engineer_name = engineers[Random.rand(0...engineers.size())]
end


if __FILE__ == $0
   puts pick_engineer #print engineer name
end
