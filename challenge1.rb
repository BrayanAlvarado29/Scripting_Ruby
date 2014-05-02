   #Challenge #2 Battle Field 
   puts "\nDo you want to create a new class?"
   puts "\nPress: \n 1 = Yes \n 2 = No"
   startApp = gets.chomp()
 
   case startApp

   when "1"
   puts "\n= Creating Class ="
   puts "\nPress: \n 1 = Warrior \n 2 = Wizard \n 3 = Archer"
 
   class Hero
    attr_reader :hp, :attack, :defense  
    def initialize(hp , attack, defense)
     @hp = hp
     @attack = attack
     @defense = defense   
    end

     # def get_properties
		   #  result = {}

		   #  puts "\nPlease write the Hp:"
		   #  hp = gets.chomp()
		   #  puts("#{'Hp'} =  #{hp}")
		   #  result["hp"] = hp 
		    	    
		   #  puts "\nPlease write the Attack:"		    
		   #  attack = gets.chomp()
		   #  puts("#{'Attack'} =  #{attack}")
		   #  result["attack"] = attack

		   #  puts "\nPlease write the Defense:"
		   #  defense = gets.chomp()
		   #  puts("#{'Defense'} =  #{defense}")
		   #  result ["defense"] = defense
		   #  # puts result
		   #  end

    def print_properties
      puts "\n"
      puts "\nPlease write the Hp:"
      hp = gets.chomp
      puts "\nPlease write the Attack:"
      attack = gets.chomp
      puts "\nPlease write the Defense:"
		  defense = gets.chomp
    	oHero = Hero.new(hp, attack, defense)
    	# puts ("#{'New class'}  =  #{Warrior}  #{'Hp'}#{@hp} - #{'Attack'}- #{'Defense'}#{@defense}")

	   	puts "-------------"
	    puts "|Status|"
	    puts(" \n#{'Hp'} =  #{oHero.hp}" )
	    puts("#{'Attack'} =  #{oHero.attack}" )
	    puts("#{'Defense'} =  #{oHero.defense}" )

    end
    def receive(attack)
	    result = attack - (attack * @defense/ 100)
	    @hp = @hp - result
	    puts ("\n Now your status is: ")
	    puts ("#{'Hp'} = #{@hp}" )
	    puts "\n"
	    end
   end 
  end

    class Warrior < Hero
    	
   end 

     class Wizard < Hero
    
   end

    class Archer < Hero
    
   end
    
   class Field        

    oHero = Hero.new(100, 15, 40)        
    def add_hero(oHero)

      @heroes = []
      @heroes.push(oHero)
      # puts @heroes         
    end 

   end 

    n = gets.chomp()

     case n
      # Creating class with 3 properties
      when "1"
      	puts "\n ::Creating new class of Warrior::"
      			 oField = Field.new
      			 oWarrior = Warrior.new(nil,nil,nil)
      			 properties = oWarrior.print_properties
      			 #printClass = oWarrior.print_properties
       		   oField.add_hero(oWarrior)
      when "2"
       puts "\n ::Creating new class of Wizard::"
      			 oField = Field.new
      			 # properties = get_properties 
      			 oWizard = Wizard.new(nil,nil,nil) 
      			 properties = oWizard.print_properties 
      			 # oWizard = Wizard.new(properties["hp"],properties["attack"] , properties["defense"])
      			 # puts("\n #{'New class'} = #{Wizard}")  
       		   oField.add_hero(oWizard)
      when "3"
       puts "\n ::Creating new class of Archer::"
      			 oField = Field.new
      			 oArcher = Archer.new(nil,nil,nil)
      			 properties = oArcher.print_properties 
      			 # properties = get_properties 
      			 # oArcher = Archer.new(properties["hp"],properties["attack"] , properties["defense"])
      			 # puts("\n #{'New class'} = #{Archer}")  
       		   oField.add_hero(oArcher)

   when "2"
   kind_class = ["1-Warrior", "2-Wizard", "3-Archer"]
   puts "\n"
   puts kind_class
   puts "\nChoose your role:\n"
   option = gets.chomp()
 
   case option 
    
   when "1"
    #Show the first class Warrior
    puts "\n Selected class = [ Warrior ] \n"

    oWarrior = Warrior.new(100, 15, 40)
    puts "-------------"
    puts "|Status|"
    puts("#{'Hp'} =  #{oWarrior.hp}" )
    puts("#{'Attack'} =  #{oWarrior.attack}" )
    puts("#{'Defense'} =  #{oWarrior.defense}" )
    puts "--------------"

    puts "Do you want to attack? "
    puts "\n"
    puts "Press: \n 1 = Yes \n 2 = No \n"
    start = gets.chomp()

    case start  
    when "1" 
     puts "\nEnter your attack please: "       
     oWarrior = oWarrior.receive(gets.chomp().to_i)    
     puts ("Ohh you received one attack!!!!")
    when "2"
     puts "Thank you..You are not ready to fight!!!"
    end

   when "2"
    #Show the second class Wizard
    puts "Selected class = [ Wizard ]"
    oWizard = Wizard.new(80, 25, 68)
    puts "-------------"
    puts "|Status|"
    puts("#{'Hp'} =  #{oWizard.hp}" )
    puts("#{'Attack'} =  #{oWizard.attack}" )
    puts("#{'Defense'} =  #{oWizard.defense}" )
    puts "--------------"


    puts "Do you want to attack? "
    puts "\n"
    puts "Press: \n 1 = Yes \n 2 = No \n"
    start = gets.chomp()

    case start
    when "1" 
     puts "\nEnter your attack please: "       
     oWizard = oWizard.receive(gets.chomp().to_i)    
     puts ("Ohh you received one attack!!!!")
    when "2"
     puts "Thank you..You are not ready to fight!!!"
    end   
   when "3"
    #Show the third class Archer
    puts "Selected class = [ Archer ]"
    oArcher = Archer.new(92, 15, 60)
    puts "-------------"
    puts "|Status|"
    puts("#{'Hp'} =  #{oArcher.hp}" )
    puts("#{'Attack'} =  #{oArcher.attack}" )
    puts("#{'Defense'} =  #{oArcher.defense}" )
    puts "--------------"
    puts "Do you want to attack? "
    puts "\nPress: \n 1 = Yes \n 2 = No\n"
    start = gets.chomp()

    case start
    when "1" 
     puts "\nEnter your attack please: "       
     oArcher = oArcher.receive(gets.chomp().to_i)
     puts ("\nWarning you received one attack!!!!") 
    when "2"
     puts "Thank you..You are not ready to fight!!!"
    end
  end
 end
