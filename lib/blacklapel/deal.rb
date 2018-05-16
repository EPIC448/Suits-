class Blacklapel::Deal
  attr_accessor :name, :price, :avalibity, :url


  def self.scrape_Homepage_mens_warehouse
    doc = Nokogiri::HTML(open("https://www.menswearhouse.com/mens-suits"))
    # Selecting each box
    doc.css(".new-arrival").map do |box_contain|
    deal = self.new
    # HUGE TOOL FOR SCRAPING ****Selector Gadget**** Targets what is most needed.
    deal.name = box_contain.css(".product-name").text.strip
    deal.price = box_contain.css(".product-price-discount").text #recheck price
    deal.url = "https://www.menswearhouse.com/mens-suits"
    deal.avalibity = box_contain.css(".promotion-callout").text.strip
    deal   # Always call the method.
  end
end



end
