// Q3
// Create a class Grade with a private field _score.
// - The setter should only accept values 0–100, otherwise print 'Invalid score'.
// - Add a getter and a computed getter isPass that returns true if score ≥ 50.
// - In main(), demonstrate updating the score multiple times and printing result
void main() {
  Grade grade1 = Grade();
  grade1.score = -50;
  print("${grade1.score}");
  grade1.score = 50;
  print("${grade1.score}");
  grade1.score = 80;
  print("${grade1.score}, ${grade1.isPassed}");
}

class Grade {
  double _score = 0;

  set score(double score) {
    if (score > 0 && score < 100) {
      this._score = score;
    } else {
      print("Invalid score");
    }
  }

  double get score => _score;
  bool get isPassed => _score >= 50;
}
