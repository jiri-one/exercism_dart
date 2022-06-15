class Node {
    int? _data;
    Node? left;
    Node? right;
    Node(this._data);
    String get data => "$_data";

    Node insert(int new_data){
        if (this._data == null) {
            this._data = new_data;
        }
        else {
            if (this._data! >= new_data) {
                if (left == null) {left = Node(new_data);}
                else {return left!.insert(new_data);}
            }
            else if (this._data! < new_data) {
                if (right == null) {right = (Node(new_data));}
                else {return right!.insert(new_data);}
            }
        }
        return this;
    }

}

class BinarySearchTree {
    late Node root;
    BinarySearchTree(String data) {
        root = Node(int.parse(data));
    }
    Node insert(String new_data) {
        return root.insert(int.parse(new_data));
    }
}
