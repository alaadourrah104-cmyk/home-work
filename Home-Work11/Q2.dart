// Q2
// Model shapes to compute total paintable area and cost.
// Requirements:
// - Provide a general shape type (concrete class) with an area() method that can be overridden.
// - Implement at least three concrete shape types with encapsulated dimensions and validated
// constructors (invalid → print; keep previous).
// - Use polymorphism with a mixed collection of shapes to compute total area (no type checks in client
// code).
// - Apply tiered pricing: first 50 units at 1.50, next 100 at 1.25, remainder at 1.00; print total area and total
// cost to 2 decimals.
import 'dart:math';

void main() {
  List<shape> shapes = [Rectangle(10, 20), circle(4), triangle(10, 15)];
  double totalArea = 0;
  double totalPrice = 0;
  for (var shape in shapes) {
    totalArea = totalArea + shape.area();
  }
  if (totalArea <= 50) {
    totalPrice = totalArea * 100;
  } else if (totalArea <= 150) {
    totalPrice = (50 * 1.5) + (totalArea - 50) * 1.25;
  }
}

class shape {
  double area() {
    return 0;
  }
}

class Rectangle extends shape {
  double height;
  double width;
  Rectangle(this.height, this.width) {
    if (height <= 0 && width <= 0) {
      print("error");
    }
  }

  @override
  double area() {
    return width * height;
  }
}

class circle extends shape {
  double radius;
  circle(this.radius) {
    if (radius <= 0) {
      print("error");
    }
  }
  @override
  double area() {
    return pi * radius * radius;
  }
}

class triangle extends shape {
  double base;
  double height;
  triangle(this.base, this.height) {
    if (base <= 0 && height <= 0) {
      print("error");
    }
  }
  @override
  double area() {
    return 0.5 * base * height;
  }
}

//
