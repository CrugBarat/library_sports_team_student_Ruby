require('minitest/autorun')
require('minitest/reporters')
require_relative('../library.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestLibrary < MiniTest::Test

  def setup()

    @books_array = [{title: "lord_of_the_rings",
                   rental_details: {
                   student_name: "Jeff",
                   date: "01/12/16"}
                   }]

    @library = Library.new(@books_array)

  end

  def test_get_books()
    assert_equal(@books_array, @library.get_books())
  end

  def test_get_book_with_title()
    assert_equal(@books_array[0], @library.get_book_with_title("lord_of_the_rings"))
  end

  def test_get_rental_details_with_title()
    assert_equal(@books_array[0][:rental_details], @library.get_rental_details_with_title("lord_of_the_rings"))
  end

  def test_add_new_book()
    assert_equal(@books_array, @library.add_new_book("Harry_Potter"))
  end

  def test_change_rental_details()
    assert_equal(@books_array[0][:rental_details], @library.change_rental_details("lord_of_the_rings", "John", "01/01/20"))
  end

  def test_remove_book_by_title()
    assert_equal(@books_array, @library.remove_book_by_title("lord_of_the_rings"))
  end

  def test_get_book_with_student_name()
    assert_equal(@books_array[0], @library.get_book_with_student_name("Jeff"))
  end

  def test_add_new_book_with_rental_details()
    assert_equal(@books_array, @library.add_new_book_with_rental_details("Moby Dick", "Eric", "02/02/20"))
  end

  def test_add_author()
    assert_equal(@books_array, @library.add_author("lord_of_the_rings", "Tolkien"))
  end

end
