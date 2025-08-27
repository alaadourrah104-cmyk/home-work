//6. a) Create List animals with three values.
//b) Add a new animal, remove the last one, and update the second element.
//c) Print animals.first, animals.last, and animals.length.
void main() {
  List<String> animals = ["dog", "cat", "lion"];
  animals.add("tiger");
  animals.remove("lion");
  animals[1] = "monkey";
  print(animals.first);
  print(animals.last);
  print(animals.length);
}
