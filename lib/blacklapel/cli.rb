# This is  CLI controller
class Blacklapel::CLI

  def call
    suit_deals
    choice
    goodbye

  end

  def suit_deals
    puts "Today's Daily Deals"
    @deal = Blacklapel::Deal.today
    @deal.each.with_index(1) do |deal, i|
      puts "#{i}. #{deal.name} - #{deal.price} - #{deal.avalibity}"
    end
  end

  def choice
    input = nil
    while input != "exit"
      input = gets.strip.downcase

      if input.to_i > 0
        deal = @deals[input.to_i-1]
        puts "#{i}. #{deal.name} - #{deal.price} - #{deal.avalibity}"
      elsif input == "suit_deals"
        suit_deals
      else
        puts "not sure what you want, type suit_deals or exit"
      end
    end
  end

  def goodbye
    puts 'see you tomorrow'
  end
end
