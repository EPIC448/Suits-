
# This is  CLI controller
class Blacklapel::CLI

  def call
    puts "Today's Daily Deals"
    # suit_deals
    choice
    goodbye

  end

  def suit_deals  #

    @deal = Blacklapel::Deal.scrape_Homepage_mens_warehouse
    @deal.each.with_index(1) do |deal, i|
    # possible (iterate over deal again.. becasue is an array.. so it only return one thing in the array,  or set it up in "today's method to to return only on thing in the array"
      puts "#{i}. #{deal.name} - #{deal.price} - #{deal.avalibity}"
    end
  end

#how did avi use meun a.k.a choices. min 19
  def choice
    input = nil
    while input != "exit"
      puts "Please type:"
      puts ""
      puts "Type in the suit number you would like to see"
      puts ""
      puts "OR"
      puts ""
      puts "Type 'suit' to view all suit listings"
      puts ""
      puts "OR"
      puts ""
      puts "Type 'exit' to exit"
      input = gets.strip.downcase
      i = input.to_i-1

      if input.to_i > 0
        deal = @deal[i]
        puts "#{i + 1}. #{deal.name} - #{deal.price} - #{deal.avalibity}"
      elsif input == "suit"
        suit_deals
      else
        puts "not sure what you want"
      end
    end
  end

  def goodbye
    puts 'see you tomorrow'
  end
end
