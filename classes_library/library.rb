class Library

  def initialize(books)
    @books = books
    @book_list = []
  end

  def get_books()
    return @books
  end

  def get_book_with_title(title_name)
    for book in @books
      if book[:title] == title_name
        return book
      end
    end
  end

  def get_rental_details_with_title(title_name)
    get_book_with_title(title_name)[:rental_details]
  end

  def add_new_book(title_name)
    new_book = {}
    new_book[:title] = title_name
    new_book[:rental_details] = {}
    @books.push(new_book)
  end

  def change_rental_details(title_name, new_student_name, new_due_date)
    get_book = get_rental_details_with_title(title_name)
    get_book[:student_name] = new_student_name
    get_book[:date] = new_due_date
    return get_book
  end

  def remove_book_by_title(title_name)
    delete_book = get_book_with_title(title_name)
    @books.delete(delete_book)
    return @books
  end

  def get_book_with_student_name(student_name)
    for book in @books
      if book[:rental_details][:student_name] == student_name
        return book
      end
    end
  end

  def add_new_book_with_rental_details(title_name, student_name, due_date)
    add_new_book(title_name)
    change_rental_details(title_name, student_name, due_date)
    return @books
  end


  def add_author(title_name, author_name)
    get_book_with_title(title_name)[:author] = author_name
    return @books
  end

end
