class PascalsTriangle {
    int calculate_value(List<int>? above_row, int row, int column) {
        int value = 0;
        int above_left = 0;
        int above_right = 0;
                try {
                    above_left = above_row?[column - 1] ?? 0;
                    above_right = above_row?[column] ?? 0;
                    } 
                on RangeError {}
        value = above_left + above_right;
        return value;
    }

    List<List<int>> rows(int last_row) {
        final row_list = <List<int>>[];
        for (int row = 0; row < last_row; row++) { // initiate empty triangle
            row_list.add(<int>[]);
            for (int column = 0; column <= row; column++) {
                List<int>? above_row;
                try {above_row = row_list[row - 1];} on RangeError {}
                (column == 0 || column == row) ? row_list[row].add(1): row_list[row].add(calculate_value(above_row,row,column));
            }
        }
        return row_list;
    }
}
