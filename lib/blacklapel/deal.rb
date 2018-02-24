
class Blacklapel::Deal
  attr_accessor :name, :price, :avalibity, :url
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
       doc = Nokogiri::HTML(open("https://menswearhouse.com/mens-suits/slim-fit-extra-trim-suits/calvin-klein-navy-plaid-extreme-slim-fit-suit-37LX37LY61"))
       deal = self.new
       #HUGE TOOL FOR SCRAPING ****Selector Gadget**** Targets what is most needed.
       deal.name = doc.css(".prod-title").text.strip
       deal.price = doc.css(".regular").text #recheck price
       deal.url = "https://menswearhouse.com"
       deal.avalibity = doc.css("#findInStoreAccordion , .js-swatch-item:nth-child(5) img").text

       deal
      end

end
