void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  // print(list1); // salah karena list bukan list1
  print(list);
  print(list2);
  print(list2.length);

  // langkah 3
  print("Langkah 3");
  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...list1];
  print(list3.length);

  var nim = [2, 3, 4, 1, 7, 2, 0, 0, 4, 3];

  var listNim = [...nim];
  print(listNim);

  // langkah 4
  print("Langkah 4");
  var promoActive = true; // kalo false outlet tidak muncul
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  // langkah 5
  print("Langkah 5");
  var login = 'Admin'; // kalo Manager Inventory nya muncul
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory',
  ];
  print(nav2);

  // langkah 6
  print("Langkah 6");
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
