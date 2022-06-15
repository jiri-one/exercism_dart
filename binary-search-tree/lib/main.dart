import 'package:binary_search_tree/binary_search_tree.dart';

void main() {
    final bst = BinarySearchTree('4')..insert('2')..insert("6")..insert("1")..insert("3")..insert("5")..insert("7");
    print("bst.root.right!.right!.data - ${bst.root.right!.right!.data}");
}
