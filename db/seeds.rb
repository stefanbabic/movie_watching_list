Movie.destroy_all
Genre.destroy_all

thriller = Genre.create!(name: 'Thriller')
horror = Genre.create!(name: 'Horror')
action = Genre.create!(name: 'Action')
comedy = Genre.create!(name: 'Comedy')
drama = Genre.create!(name: 'Drama')
sci_fi = Genre.create!(name: 'Sci-Fi')
crime = Genre.create!(name: 'Crime')
war = Genre.create!(name: 'War')

Movie.create!([{
  title: "The Terminator",
  year: 1984,
  description: "A human-looking indestructible cyborg is sent from 2029 to 1984
  to assassinate a waitress, whose unborn son will lead humanity in a war
  against the machines, while a soldier from that war is sent to protect her at
  all costs.",
  imdb_id: "tt0088247",
  rating: 4,
  finished_on: 22.days.ago,
  genres: [sci_fi, action]
},
{
  title: "The Shawshank Redemption",
  year: 1994,
  description: "Two imprisoned men bond over a number of years, finding solace
  and eventual redemption through acts of common decency.",
  imdb_id: "tt0111161",
  rating: 5,
  finished_on: 6.days.ago,
  genres: [thriller]
},
{
  title: "The Godfather",
  year: 1972,
  description: "The aging patriarch of an organized crime dynasty transfers
  control of his clandestine empire to his reluctant son.",
  imdb_id: "tt0068646",
  rating: 3,
  finished_on: nil,
  genres: [crime, action]
},
{
  title: "The Dark Knight",
  year: 2008,
  description: "When the menace known as the Joker wreaks havoc and chaos on
  the people of Gotham, the caped crusader must come to terms with one of the
  greatest psychological tests of his ability to fight injustice.",
  imdb_id: "tt0468569",
  rating: 5,
  finished_on: 12.days.ago,
  genres: [action, sci_fi]
},
{
  title: "Schindler's List",
  year: 1993,
  description: "In German-occupied Poland during World War II, Oskar Schindler
  gradually becomes concerned for his Jewish workforce after witnessing their
  persecution by the Nazi Germans.",
  imdb_id: "tt0108052",
  rating: 5,
  finished_on: 53.days.ago,
  genres: [war]
}])

p "Created #{Movie.count} movies"
