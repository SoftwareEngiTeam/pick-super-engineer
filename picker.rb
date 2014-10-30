#--run 'ruby picker.rb string for find' in terminal--  

class Pick_super_engineer
   #create global value.
   def initialize(engineer)
      @engineer = engineer
   end

   #featureA change ' ' to '.'
   def featureA (engineer_name)
      puts "FeatureA : "+ (engineer_name.to_s.gsub(' ','.')).to_s #puts pick_engineer
   end

   #featueB put '...' after first character lastname.
   def feature_b(engineer_name)
      index = engineer_name.split(" ") #split name and lastname in array	
      puts "FeatureB : "+ (index[0]+" "+index[1].chr+"...").to_s #show name and first character lastname and ...
   end

   #featureC find engineer name in engineers.txt
   def feature_C
      cha = ARGV[0].to_s #receive value to find.
      cha_list = Array.new
      #case no value to find.
      if cha.empty?
         engineer_name = @engineer.sample #random engineer name.
         featureA(engineer_name)
         feature_b(engineer_name)
         puts "FeatureC : no search in FeatureC"
      #case have value to find.
      else
         cha_list.push(@engineer.find {|i| i.include? cha}) #find engineer name in engineers.txt.
	 #case not find engineer name.
         if cha_list == [nil]
            engineer_name = @engineer.sample #random engineer name.
            featureA(engineer_name)
            feature_b(engineer_name)
            puts "FeatureC : not find engineer name!"
	 #case have engineer name from find.
         else
            featureA(cha_list[0])
            feature_b(cha_list[0])
            puts "FeatureC : "+ cha_list[0].to_s
         end
      end
   end
end

#read file and create new class.
engineer = File.readlines('engineers.txt')
name_e = Pick_super_engineer.new(engineer)
name_e.feature_C

