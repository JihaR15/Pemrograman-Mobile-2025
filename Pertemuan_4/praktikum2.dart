void main(List<String> args) {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.

  // .add()
  names1.add("Jiha Ramdhan");
  names1.add("2341720043");
  names1.add("names1");

  // .addAll()
  names2.addAll({"Jiha Ramdhan", "2341720043","names2"});

  print(names1);
  print(names2);
  // print(names3);
}
