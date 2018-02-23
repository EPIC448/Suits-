require 'capybara/poltergeist'
class Blacklapel::Deal
  attr_accessor :name, :price, :avalibilty, :url
  # we are combining the scrape method into our deals rather than doing them seperatly..
 # scrape blacklap & macys.

    def self.today
        self.scrape_deals
    end


      def self.scrape_deals  # for all deals.
        scrapped_deal = []
        scrapped_deal << self.scrape_mens_warehouse
        scrapped_deal
      end

      def self.scrape_mens_warehouse
       doc = Nokogiri::HTML(open("https://www.menswearhouse.com/mens-clothes/mens-suit-separates/suit-separate-coats/pronto-uomo-platinum-modern-fit-suit-separates-coat-navy-sharkskin-343F344F81"))

       scrapped_deal = self.new
       scrapped_deal.name = doc.search("h1.prod-title").text
       scrapped_deal.price = doc.search("review-price.final-price regular > p").text #recheck price
       scrapped_deal.url = doc.search("a.product-info-label").first.attr("href")
       scrapped_deal.avalibilty =true



      # deal_2 = self.new
      # deal-2.name = "suit jacket"
      # price = "$360"
      # avalibilty = true
      # url = "https://www.menswearhouse.com/mens-clothes/mens-suit-separates/suit-separate-coats/pronto-uomo-platinum-modern-fit-suit-separates-coat-navy-sharkskin-343F344F81"
       end

      #  must return array of sracpped deals. [deal_1, deal_2]
end
