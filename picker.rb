
def pick_engineer
   """
   Function: pick_engineer
   Description: pick an engineer name from file.
   """
   engineers = File.open('engineers.txt').read.split("\n")
   engineer_name = engineers[Random.rand(0...engineers.size())]
end

def feature_C
   cha = ARGV.map {|i| "" + i.to_s + ""}.join(",")
   print cha
   engineer = File.open('engineers.txt').read.split("\n").each do |line|
   #file = File.read('engineers.txt').each_line do |line| 
     if line.include? "#{cha.to_s}"
       puts "finding #{cha} --> #{line}"
     end
   end
end

puts pick_engineer #print engineer name
feature_C

