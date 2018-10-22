require('minitest/autorun')
require('minitest/rg')
require_relative('day1_week2_homework.rb')

class TestCodeclanStudent < Minitest::Test

  def test_student_name()
    student1 = CodeclanStudent.new("Jake", "E26")
    assert_equal("Jake", student1.name)
  end

  def test_student_cohort()
    student1 = CodeclanStudent.new("Jake", "E26")
    assert_equal("E26", student1.cohort)
  end

  def test_change_student_name()
    student1 = CodeclanStudent.new("Jake", "E26")
    student1.set_name("Borna")
    assert_equal("Borna", student1.name)
  end

  def test_change_student_cohort()
    student1 = CodeclanStudent.new("Jake", "E26")
    student1.set_cohort("E25")
    assert_equal("E25", student1.cohort)
  end

  def test_student_can_talk()
    student1 = CodeclanStudent.new("Jake", "E26")
    assert_equal("Hello", student1.talk("Hello"))
  end

  def test_student_favourite_language()
    student1 = CodeclanStudent.new("Jake", "E26")
    assert_equal("I love Javascript!", student1.favourite("Javascript"))
  end



end

class TestTeam < Minitest::Test

  def test_team_name
    team = Team.new("Manchester United", ["Giggs", "Beckham", "Ronaldo"], "Sir Alex Ferguson")
    assert_equal("Manchester United", team.name)
  end

  def test_set_new_coach_name
    team = Team.new("Manchester United", ["Giggs", "Beckham", "Ronaldo"], "Sir Alex Ferguson")
    team.set_coach_name("Mourinho")
    assert_equal("Mourinho", team.coach)
  end

  def test_add_new_player
    team = Team.new("Manchester United", ["Giggs", "Beckham", "Ronaldo"], "Sir Alex Ferguson")
    team.add_new_player("Scholes")
    assert_equal(["Giggs", "Beckham", "Ronaldo", "Scholes"], team.players)
  end

  def test_find_player_by_name__player_found
    team = Team.new("Manchester United", ["Giggs", "Beckham", "Ronaldo"], "Sir Alex Ferguson")
    assert_equal("Giggs", team.find_player_by_name("Giggs") )
  end

  def test_find_player_by_name__player_not_found
    team = Team.new("Manchester United", ["Giggs", "Beckham", "Ronaldo"], "Sir Alex Ferguson")
    assert_equal(nil, team.find_player_by_name("Ferdinand") )
  end

  def test_win_or_lose__win
    team = Team.new("Manchester United", ["Giggs", "Beckham", "Ronaldo"], "Sir Alex Ferguson")
    assert_equal(3, team.win_or_lose("win"))
  end

  def test_win_or_lose__lose
    team = Team.new("Manchester United", ["Giggs", "Beckham", "Ronaldo"], "Sir Alex Ferguson")
    assert_equal(0, team.win_or_lose("lose"))
  end

end

class TestLibrary < Minitest::Test

    def test_find_book_by_title__book_found
      library = Library.new([{title: "Harry Potter", rental_details: {student: "Borna", due_date: "22/10/2018"}}, {title: "Lord of the Rings", rental_details: {student: "Jake", due_date: "19/04/2018"}}])
      assert_equal({title: "Harry Potter", rental_details: {student: "Borna", due_date: "22/10/2018"}}, library.find_book_by_title("Harry Potter"))
    end

    def test_find_book_by_title__book__not_found
      library = Library.new([{title: "Harry Potter", rental_details: {student: "Borna", due_date: "22/10/2018"}}, {title: "Lord of the Rings", rental_details: {student: "Jake", due_date: "19/04/2018"}}])
      assert_equal(nil, library.find_book_by_title("The Very Hungry Caterpillar"))
    end

    def test_find_rental_details_by_title__book_found
      library = Library.new([{title: "Harry Potter", rental_details: {student: "Borna", due_date: "22/10/2018"}}, {title: "Lord of the Rings", rental_details: {student: "Jake", due_date: "19/04/2018"}}])
      rental_details = {student: "Borna", due_date: "22/10/2018"}
      assert_equal(rental_details, library.find_rental_details_by_title("Harry Potter") )
    end

    def test_find_rental_details_by_title__book_found
      library = Library.new([{title: "Harry Potter", rental_details: {student: "Borna", due_date: "22/10/2018"}}, {title: "Lord of the Rings", rental_details: {student: "Jake", due_date: "19/04/2018"}}])
      assert_equal(nil, library.find_rental_details_by_title("The Very Hungry Caterpillar") )
    end

    def test_add_new_book
      library = Library.new([{title: "Harry Potter", rental_details: {student: "Borna", due_date: "22/10/2018"}}, {title: "Lord of the Rings", rental_details: {student: "Jake", due_date: "19/04/2018"}}])
      library_with_new_book = [{title: "Harry Potter", rental_details: {student: "Borna", due_date: "22/10/2018"}}, {title: "Lord of the Rings", rental_details: {student: "Jake", due_date: "19/04/2018"}}, {title: "The Very Hungry Caterpillar", rental_details: {student: "", due_date: ""}}]
      assert_equal(library_with_new_book, library.add_new_book("The Very Hungry Caterpillar"))
    end

    def test_change_rental_details__book_found
      library = Library.new([{title: "Harry Potter", rental_details: {student: "Borna", due_date: "22/10/2018"}}, {title: "Lord of the Rings", rental_details: {student: "Jake", due_date: "19/04/2018"}}])
      new_library_details = [{title: "Harry Potter", rental_details: {student: "Jake", due_date: "23/10/2018"}}, {title: "Lord of the Rings", rental_details: {student: "Jake", due_date: "19/04/2018"}}]
      assert_equal(new_library_details, library.change_rental_details("Harry Potter", "Jake", "23/10/2018"))
    end

    def test_change_rental_details__book_not_found
      library = Library.new([{title: "Harry Potter", rental_details: {student: "Borna", due_date: "22/10/2018"}}, {title: "Lord of the Rings", rental_details: {student: "Jake", due_date: "19/04/2018"}}])
      assert_equal("BOOK NOT FOUND", library.change_rental_details("Bob the Builder", "Jake", "23/10/2018"))
    end

end


# ..DEPRECATED: Use assert_nil if expecting nil from codeclan_specs.rb:69. This will fail in Minitest 6.
# .........


# Create a getter for the books
# Create a method that takes in a book title and returns all of the information about that book.
# Create a method that takes in a book title and returns only the rental details for that book.
# Create a method that takes in a book title and adds it to our book list (add a new hash for the book with the student name and date being left as empty strings)
# Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.
