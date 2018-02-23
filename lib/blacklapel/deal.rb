
class Blacklapel::Deal
  attr_accessor :name, :price, :avalibilty, :url
  # we are combining the scrape method into our scrape method using the mens wear house  site.
    def self.today
        self.scrape_deals
    end


      def self.scrape_deals  # for all deals.
        deals = []
        deals << self.scrape_mens_warehouse

        deals
      end

      def self.scrape_mens_warehouse
       doc = Nokogiri::HTML(open("https://www.menswearhouse.com/mens-clothes/mens-suit-separates/suit-separate-coats/pronto-uomo-platinum-modern-fit-suit-separates-coat-navy-sharkskin-343F344F81"))
binding.pry
       deal = self.new
       deal.name = doc.search("h1.prod-title").text
       deal.price = doc.search("p.final-price regular").text #recheck price
       deal.url = "https://menswearhouse.com"
       deal.avalibilty = true

       deal

       end

end
