
require_relative('models/star')
require_relative('models/movie')
require_relative('models/casting')
require('pry')

# Casting.delete_all()
Movie.delete_all()
Star.delete_all()


star1 = Star.new({'first_name' => 'Arnold', 'last_name' => 'schwarzenegger'})
star1.save()

movie1 = Movie.new ({'title' => 'twins', 'genre' => 'comedy'})
movie1.save()

movie2 = Movie.new({'title' => 'terminator', 'genre' => 'action'})
movie2.save()

star2 = Star.new({'first_name' => 'Danny', 'last_name' => 'Devito'})
star2.save()

casting1 = Casting.new({'movie_id' => movie1.id, 'star_id' => star1.id, 'fee' => '4000000'})
casting1.save()

binding.pry
nil
