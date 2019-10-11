


main() {
  print(uniqueSort([1,4,4,4,4,4,3,3,2,3,2,1]));
  print(sumOfEvens([
  [1, 0, 2],
  [5, 5, 7],
  [9, 4, 3]
]));
  print(sumOfEvens([
  [1, 1],
 [1, 1]
]));

  print(sumOfEvens([
    [42, 9],
    [16, 8]
  ]));

  print(unmixed("123456"));
  print(unmixed("hTsii  s aimex dpus rtni.g"));

}

// Challenge 1 - Purge and Organize
// Given a list of numbers, write a function that returns an list that...
// 1. Has all duplicate elements removed .
// 2. Is sorted from least to greatest value.
// Examples
// uniqueSort([1, 2, 4, 3]) ➞ [1, 2, 3, 4]
// uniqueSort([1, 4, 4, 4, 4, 4, 3, 2, 1, 2]) ➞ [1, 2, 3, 4]
// uniqueSort([6, 7, 3, 2, 1]) ➞ [1, 2, 3, 6, 7]
//
List<int>uniqueList = [];
uniqueSort(List<int> rawList){
  uniqueList =  rawList.toSet().toList();
  uniqueList.sort((a, b) => a.compareTo(b));
  return uniqueList;
}


List finalList = [];

int sumOfEvens(List<List<int>> raw2DList){
  List newList = [];
  int sum = 0;
  for(List m in raw2DList ){
    for(int i = 0;i< m.length;i++){
      newList.add(m[i]);
    }
  }
  for(int i = 0; i< newList.length;i++){
    if(newList[i] % 2 == 0){
      sum = sum + newList[i];
    }
  }
  return sum;
}


String unmixed(String Characters) {
  String result = '';
  for (int i = 0; i< Characters.length; i = i+2){
    result = result + Characters[i + 1] + Characters[i];
  }
  if(Characters.length % 2 != 0){
    result += Characters[Characters.length - 1];
  }
  return result;
}
// Challenge 2 - Sum of all Even Numbers in a Matrix
// Create a function that returns the sum of all even elements in a 2D matrix.
// Examples
// sumOfEvens([
//   [1, 0, 2],
//   [5, 5, 7],
//   [9, 4, 3]
// ]) ➞ 6
//
// 2 + 4 = 6
//
// sumOfEvens([
//   [1, 1],
//   [1, 1]
// ]) ➞ 0
//
// sumOfEvens([
//   [42, 9],
//   [16, 8]
// ]) ➞ 66
//
// sumOfEvens([
//   [],
//   [],
//   []
// ]) ➞ 0


// Challenge 3 - Unmix My Strings
// 'lPaeesh le pemu mnxit ehess rtnisg!' Oh, sorry, that was supposed to say: Please help me unmix these strings!
// Somehow my strings have all become mixed up; every pair of characters has been swapped.
// Help me undo this so I can understand my strings again.
// Example:
// unmix("123456") ➞ "214365"
//
// unmix("hTsii  s aimex dpus rtni.g") ➞ "This is a mixed up string."
//
// unmix("badce") ➞ "abcde"
