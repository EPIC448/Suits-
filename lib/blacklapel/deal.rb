class Blacklapel::Deal
  attr_accessor :name, :price, :avalibilty, :url
  # we are combining the scrape method into our deals rather than doing them seperatly..
 # scrape blacklap & macys.

    def self.today
        self.scrape_deals
    end

 #blacklapel

      def self.scrape_deals
         # Got to blacklapel, Fing product
         #Extract the properties
         #instantiate a deal.
        deal_1 = self.new
        deal-1.name = "double breasted"
        price = "$549"
        avalibilty = true
        url = "https://blacklapel.com/"

        # macys
        deal_2 = self.new
        deal-2.name = "suit jacket"
        price = "$360"
        avalibilty = true
        url = "https://www.macys.com/shop/b/suit-jacket?id=74300"

        #  must return array of sracpped deals. [deal_1, deal_2]

      end

end
