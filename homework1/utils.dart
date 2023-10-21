/// Returns true if the two lists of integers are equal, false otherwise.
/// Two lists are considered equal if they have the same length and contain the same elements,
/// regardless of their order.
bool isEqual(List<int> a, List<int> b) {
  var condition1 = a.toSet().difference(b.toSet()).isEmpty;
  var condition2 = a.length == b.length;
  return condition1 && condition2;
}
