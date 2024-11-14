//Convert array into Zig-Zag fashion

//Given an array arr of distinct elements of size N, the task is to rearrange the elements of the array in a zig-zag fashion so that the converted array should be in the below form:

//arr[0] < arr[1]  > arr[2] < arr[3] > arr[4] < . . . . arr[n-2] < arr[n-1] > arr[n].

void main() {
  List<int> array = [4, 3, 7, 8, 6, 2, 1];
  List<int> newArray = [];
  for (int i = 0; i < array.length; i++) {
    if (newArray.isEmpty) {
      newArray.add(array[i]);
    } else if (newArray[newArray.length - 1] < array[i]) {
      newArray.add(array[i]);
    } else if (newArray.length >= 3 &&
        newArray[newArray.length - 2] > array[i]) {
      newArray.add(array[i]);
    }
  }
  print(newArray);
}
