import 'utils.dart';

/// Returns a list containing the number of times the highest score and the lowest score
/// were broken in a given list of scores.
List<int> breakingRecords(List<int> scores) {
  int highestScore = scores[0];
  int lowestScore = scores[0];
  int highestScoreCount = 0;
  int lowestScoreCount = 0;

  for (int i = 1; i < scores.length; i++) {
    if (scores[i] > highestScore) {
      highestScore = scores[i];
      highestScoreCount++;
    } else if (scores[i] < lowestScore) {
      lowestScore = scores[i];
      lowestScoreCount++;
    }
  }

  return [highestScoreCount, lowestScoreCount];
}

void main() {
  // Test case1
  List<int> scores1 = [10, 5, 20, 20, 4, 5, 2, 25, 1];
  List<int> expected1 = [2, 4];
  print('Test case 1: ${isEqual(breakingRecords(scores1), expected1)}');
}
