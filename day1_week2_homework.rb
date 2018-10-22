class CodeclanStudent

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def name
    return @name
  end

  def cohort
    return @cohort
  end

  def set_name(new_name)
    @name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def talk(what_to_say)
    what_to_say = "Hello"
    return what_to_say
  end

  def favourite(my_favourite_language)
    return "I love #{my_favourite_language}!"
  end
end


 class Team
   attr_reader :name
   attr_accessor :coach, :players

   def initialize(name, players, coach)
     @name = name
     @players = players
     @coach = coach
     @points = 0
   end

   def set_coach_name(new_name)
     @coach = new_name
   end

  def add_new_player(player)
    @players.push(player)
  end

  def find_player_by_name(name)
    for player in @players
      if player == name
        return player
      end
    end
    return nil
  end

  def win_or_lose(answer)
    points = 3 if answer == "win"
    points = 0 if answer == "lose"
    @points += points
  end
 end
