import Foundation

struct GeometryCalculator {
    
    static func roundArea(_ radius: Double) -> Double {
        return Double.pi * pow(radius, 2)
    }
    
    static func triangleArea(firstSide a: Double, secondSide b: Double, thirdSide c: Double) -> Double {
        let p = (a + b + c) / 2
        return sqrt(p * (p - a) * (p - b) * (p - c))
    }
    
    static func isRightTriangle(firstSide a: Double, secondSide b: Double, thirdSide c: Double) -> Bool {
        let sides = [a, b, c].sorted()
        return (sides[0] * sides[0] + sides[1] * sides[1] == sides[2] * sides[2])
    }
}
print("Введите числа через пробел")
let inputStr = readLine()

let numbers = inputStr?.split(separator: " ")

if let numbers = numbers {
    switch numbers.count {
    case 1:
        print("Площадь круга: \(GeometryCalculator.roundArea(Double(numbers[0]) ?? 0))")
    case 3:
        print("Площадь треугольника: \(GeometryCalculator.triangleArea(firstSide: Double(numbers[0]) ?? 0, secondSide: Double(numbers[1]) ?? 0, thirdSide: Double(numbers[2]) ?? 0))")
        if GeometryCalculator.isRightTriangle(firstSide: Double(numbers[0]) ?? 0, secondSide: Double(numbers[1]) ?? 0, thirdSide: Double(numbers[2]) ?? 0){
            print("Треугольник прямоугольный")
        }else {
            print("Треугольник НЕ прямоугольный")
        }
    default:
        print("Неверное количество чисел при вводе")
    }
}


