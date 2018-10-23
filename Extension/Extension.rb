#homework- Extension, 22/10/2018
class Library

  def initialize(books)
    @books = books
  end


  def get_book(book_index)
    return @books[book_index]
  end


  def book_info(book_name)
    for book in @books
      if book_name = book[:title]
        return book
      end
    end
  end


  def return_rental_details(book_name)
    for book in @books
      if book_name = book[:title]
        return book[:rental_details]
      end
    end
  end

  # def set_book(book_info)
  #   return @books.push(book_info)
  # end

    def add_book_title(book_title)
      book[title] = book_title     
    end

end
