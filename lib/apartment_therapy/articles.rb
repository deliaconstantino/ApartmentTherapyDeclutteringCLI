class ApartmentTherapy::Articles
  attr_accessor :title, :author, :date, :category, :url



  def self.articles
  

    article_1 = self.new
    article_1 .title = "One Kitchen Decluttering Task You Might Put Off Too Late This Year"
    article_1 .author = "Taryn Williford"
    article_1.date = "NOV 22, 2020"
    article_1.category = "PARTNER"
    article_1.url = "https://www.apartmenttherapy.com/holiday-cure-2020-kitchen-tool-decluttering-36822648"

    article_2 = ApartmentTherapy::Articles.new
    article_2 .title = "I Won the Battle Against Cat Clutter in Every Room With These $13 Baskets"
    article_2 .author = "Ella Ceron"
    article_2.date = "NOV 19, 2020"
    article_2.category = "LIVING"
    article_2.url = "https://www.apartmenttherapy.com/how-to-organize-cat-toys-36844362"

    [article_1, article_2]

  end

end
