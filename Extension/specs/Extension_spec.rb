require('minitest/autorun')
require('minitest/rg')
require_relative('../Extension')

class TestLibrary < MiniTest::Test


  def test_get_book
    library1 = Library.new( [
      {title: "The Dictionary", rental_details: {student_name: "John Doe", date: "22/10/18"} },
      ])

    result = library1.get_book(0)

    assert_equal({title: "The Dictionary", rental_details: {student_name: "John Doe", date: "22/10/18"}}, result)

  end



  def test_book_info
    library1 = Library.new( [
      {title: "The Dictionary", rental_details: {student_name: "John Doe", date: "22/10/18"} } ])

    result = library1.book_info("The Dictionary")

    assert_equal({title: "The Dictionary", rental_details: {student_name: "John Doe", date: "22/10/18"}}, result)
  end


  def test_return_rental_details
    library1 = Library.new( [
      {title: "The Dictionary", rental_details: {student_name: "John Doe", date: "22/10/18"} } ] )

    result = library1.return_rental_details("The Dictionary")

    assert_equal({student_name: "John Doe", date: "22/10/18"}, result)
  end



  def test_add_book_title
    library1 = Library.new(  [
      {title: "The Dictionary", rental_details: {student_name: "", date: ""} } ])

    result = library1[].length

    assert_equal(1, result)
  end




end
