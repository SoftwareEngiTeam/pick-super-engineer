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

def feature_C
   #get argument
   cha = ARGV.map {|i| "" + i.to_s + ""}.join(",")
   engineer = File.open('engineers.txt').read.split("\n").each do |line|
   #file = File.read('engineers.txt').each_line do |line| 
     if line.include? "#{cha.to_s}"
       puts "finding #{cha} --> #{line}"
     end
   end
end

if __FILE__ == $0
   name_e = pick_engineer
   puts name_e #print engineer name
   puts featureA(name_e) #show engineer name from featureA
   puts feature_b(name_e) #show engineer name from feature_b
   feature_C # get argument when -- run ruby test.rb aaa --
end

