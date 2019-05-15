# your code goes here
require 'pry'

class Person
    attr_reader :bank_account, :happiness, :hygiene, :name
    attr_writer :bank_account, :hygiene 
#    binding.pry  

# attr_accessor :money, :happiness, :hygiene, 

   def initialize(name, bank_account = 25, happiness = 8, hygiene = 8) 
    @name = name 
    @bank_account = bank_account 
    @happiness =  happiness 
    @hygiene   = hygiene  
    end 

    def happiness=(happiness)
       if happiness > 10 
         @happiness = 10 
      
         elsif happiness < 0 
            @happiness = 0
        
        else
            @happiness = happiness     
        end 
    end

    def happy?
        happiness 
        if hygiene > 7 && happiness > 7 
            return true 
        else 
            return false
        end  

        end  
        # binding.pry
       
        def hygiene=(hygiene)
            if hygiene > 10 
              @hygiene = 10 
           
              elsif hygiene < 0 
                 @hygiene = 0
             
             else
                 @hygiene = hygiene     
             end 
         end

    def clean?
        if hygiene > 7 && happiness > 7 
            return true 
        else 
            return false  
         end
                 
    end
  

    def get_paid(salary_amount) 
        @bank_account += salary_amount 
        return  "all about the benjamins"
        # binding.pry 
    end 
    
    
    def take_bath
        self.hygiene += 4 
        return "♪ Rub-a-dub just relaxing in the tub ♫"             
    end  

    def work_out
        self.happiness += 2 
        self.hygiene -= 3 
        return "♪ another one bites the dust ♫"
    end  

    def call_friend(friend) 
        self.happiness=(@happiness + 3)
        friend.happiness=(friend.happiness + 3)  
       return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end  

    def start_conversation(friend, topic)
        if topic == 'politics' 
         self.happiness=@happiness - 2 && friend.happiness=@happiness - 2       
        return "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
        self.happiness=@happiness + 1 && friend.happiness=@happiness + 1      
            return 'blah blah sun blah rain' 
        else 
            return 'blah blah blah blah blah'  
    end  
  end    
end


# Bob = Person.new('Bob', 30 , 10, 8)
# Bob.call_friend("Tom")   
#Tom = Person.new('Tom', 40, 11, 7)
#  binding.pry
  


