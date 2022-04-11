# This is a custom exception that you can use in your code
class NotMovieClubMemberError < RuntimeError
end

class Moviegoer
  def initialize(age, member: false)
    @age = age
    @member = member
  end

  def ticket_price
    @age < 60 ? 15 : 10
  end

  def watch_scary_movie?
    not @age < 18
  end

  # Popcorn is 🍿
  def claim_free_popcorn!
    if !@member
      raise NotMovieClubMemberError, "You must be a member to get free popcorn"
    end

    return "🍿"
  end
end
