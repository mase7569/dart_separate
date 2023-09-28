import 'package:separate/separate.dart';

void main() async {
  print([].separate((i, e0, e1) => null)); // []
  print([].separate((i, e0, e1) => 0)); // []
  print([1, 2, 3].separate((i, e0, e1) => null)); // [1, 2, 3]
  print([1, 2, 3].separate((i, e0, e1) => 0)); // [1, 0, 2, 0, 3]
  print([1, 2, 3].separate((i, e0, e1) => e0 == 2 ? 0 : null)); // [1, 2, 0, 3]
  print([].separate(
    (i, e0, e1) => null,
    before: (first) => -1000,
    after: (last) => 1000,
  )); // []
  print([1, 2, 3].separate(
    (i, e0, e1) => null,
    before: (first) => -1000,
    after: (last) => 1000,
  )); // [-1000, 1, 2, 3, 1000]
}
