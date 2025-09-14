// Q3 Create a class Movie with attributes title and rating. In main(), create a list of 4 movies. Print
// only the movies with a rating above 7.
void main() {
  List<Movie> movies = [
    Movie("Titanic", 9),
    Movie("inception", 8),
    Movie("Avatar", 5.8),
    Movie("The Good father", 3.8),
  ];
  for (var item in movies) {
    if (item.rating! > 7) {
      print(" the movie ${item.title} has a rating ${item.rating} than >7");
    }
  }
}

class Movie {
  String? title;
  double? rating;
  Movie(String title, double rating) {
    this.title = title;
    this.rating = rating;
  }
}
