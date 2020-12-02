class ApartmentTherapy::CLI

  def call
    list_articles
    menu
    goodbye
  end

  def list_articles
    #this will grab from the articles class
    puts "Articles available:"
    @articles = ApartmentTherapy::Articles.articles
    @articles.each.with_index(1) do |a, i|
      puts "#{i}. #{a.title}"
    end
  end

  def menu
    input = ""
    while input != "exit"
      puts "Please put the number of an article (1 - #{@articles.length}) to learn more."
      puts "Otherwise type list to see the full list again or exit to leave."
      input = gets.strip.downcase
      if input.to_i > 0 && input.to_i <= @articles.length
        the_article = @articles[input.to_i - 1]
        puts the_article.title
        puts the_article.author
        puts the_article.category
        puts the_article.date
      elsif input == "list"
        list_articles
      else
        puts "Please enter a valid response" unless input == "exit"
      end
    end
  end

  def goodbye
    puts "Have a nice day!"
  end
end
