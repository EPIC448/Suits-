 # This is  CLI controller
class Blacklapel::CLI

  def call
    suit_deals
    choice
    goodbye

  end

    def suit_deals
      #here doc  https://blacklapel.com/
      puts "Today's suits"
      puts  "<<-Doc.gsub/^\s*/, ''
      1. suit jacket -$390-
      2. double breasted  $911"

    end

    def choice
      input = nil
      while input != "exit"
       input = gets.strip.downcase
       case input
       when "1"
         puts "More info on deal 1..."
       when "2"
         puts "More info on deal 2..."
       when "choice"
         choice
       else
         puts "not sure what you want, type list or exit"
       end
     end
    end

    def goodbye
      puts 'see you tomorrow'
    end
end
