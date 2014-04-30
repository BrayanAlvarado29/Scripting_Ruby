			 
			puts "Do you want to create a new class?"
			puts "\n"
			puts "Press: \n 1 = Yes \n 2 = No"
			start = gets.chomp()

			  case start

			when "1"
			class Arena 
				oHero = Hero.new(hp , attack, defense)
				oWarrior = Warrior.new(100, 15, 40)
				oWizard = Wizard.new(80, 25, 68)
				oArcher = Archer.new(92, 15, 60)

				@heroes = []

				def add_hero(oHero)
				    @heroes.push(oHero)			   		
									 
				end	

				oArena = Arena.new 
				oArena.add_hero(oWarrior)
				oArena.add_hero(oWizard)
				oArena.add_hero(oArcher)
			end	




			when "2"

			kind_class = ["1-Warrior", "2-Wizard", "3-Archer"]
			puts "\n"
			puts kind_class
			puts "\n"
			puts "Choose your role: "
			puts "\n"
			option = gets.chomp()
			puts "\n"


			class Hero

				attr_reader :hp, :attack, :defense  
				def initialize(hp , attack, defense)
					@hp = hp
					@attack = attack
					@defense = defense			
				end
				def receive(attack)
					result = attack - (attack * @defense/ 100)
					@hp = @hp - result
					puts "\n"
					puts ("Now your status is: ")
					puts ("#{'Hp'} = #{@hp}" )
					puts "\n"
				end

			end	

			class Warrior < Hero
				
			end	 

			class Wizard < Hero
				
			end

			class Archer < Hero
				
			end
	
			case option

			when "0"
				
				
			when "1"
				#Show the first class Warrior
				puts "Selected class = [ Warrior ]"
				puts "\n"
				
				oWarrior = Warrior.new(100, 15, 40)
				puts "-------------"
				puts "|Status|"
				puts("#{'Hp'} =  #{oWarrior.hp}" )
				puts("#{'Attack'} =  #{oWarrior.attack}" )
				puts("#{'Defense'} =  #{oWarrior.defense}" )
				puts "--------------"

				puts "Do you want to attack? "
				puts "\n"
				puts "Press: \n 1 = Yes \n 2 = No"
				puts "\n"
				start = gets.chomp()

				case start
				
				when "1" 
					puts "\n"				
					puts "Enter your attack please: "							
					oWarrior = oWarrior.receive(gets.chomp().to_i)				
					puts ("Ohh you received one attack!!!!")
					
				when "2"
					puts "Thank you..You are not ready to fight!!!"
					
				end
				
				# if kind == 1
				# 	oWarrior.Receive_Attack
				# 	puts oWarrior.hp
				# 	puts  oWarrior.defense
				# 	elsif kind == 2
				# 		oArcher.Receive_Attack			
				# end

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
				puts "Press: \n 1 = Yes \n 2 = No"
				puts "\n"
				start = gets.chomp()

				case start
				when "1"	
					puts "\n"
					puts "Enter your attack please: "							
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
			    puts "\n"
				puts "Press: \n 1 = Yes \n 2 = No"
				puts "\n"		
				start = gets.chomp()

				case start

				when "1"	
					puts "\n"
					puts "Enter your attack please: "							
					oArcher = oArcher.receive(gets.chomp().to_i)
					puts "\n"				
					puts ("Ohh you received one attack!!!!")	
				when "2"
					puts "Thank you..You are not ready to fight!!!"
					
				end
			end

			end

		
			



			
				





			 



