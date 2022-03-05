import 'dart:math';
import 'dart:io';

double? distance(Point p1, Point p2) {
  double x0 = p1.x.toDouble() - p2.x.toDouble();
  double y0 = p1.y.toDouble() - p2.y.toDouble();
  return sqrt(x0 * x0 + y0 * y0);
}

num? getLongestDistanceBetweenPoints(List<Point> pointsList) {
  double maximum = 0;

  for (var i = 0; i < pointsList.length; i++) {
    for (var j = i; j < pointsList.length; j++) {
      double dist = distance(pointsList.elementAt(i), pointsList.elementAt(j))!;
      maximum = max(maximum, dist);
    }
  }

  return maximum;
}

void main() {
  var pointsList = <Point>[];
  int? inpX = -1;
  int? inpY = -1;
  int? pointQuantity = null;
  print("How much point do you want to add on XY coordinate system?");
  while (pointQuantity == null || pointQuantity <= 0) {
    pointQuantity = int.tryParse(stdin.readLineSync()!);
    if (pointQuantity == null || pointQuantity <= 0)
      print("Please, enter a number which is higher than 0");
  }

  for (var i = 0; i < pointQuantity; i++) {
    print(
        "Enter a X coordinate of your next point (if you enter a string - entering will break)");
    inpX = int?.tryParse(stdin.readLineSync()!);
    if (inpX == null) break;
    print(
        "Enter an Y coordinate of your next point (if you enter a string - entering will break)");
    inpY = int?.tryParse(stdin.readLineSync()!);
    if (inpY == null) break;
    pointsList.add(Point(inpX, inpY));
    print(
        "<===============================================================================>");
  }

  print(getLongestDistanceBetweenPoints(pointsList));
}
