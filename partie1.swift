//Question 1

class Rectangle {
  static var nb = 0

  var longueur: Double
  var largeur: Double

  init(longueur: Double, largeur: Double) {
      self.longueur = longueur
      self.largeur = largeur
      Rectangle.nb += 1
  }

  func area() -> Double {
      return longueur * largeur
  }

  func perimeter() -> Double {
      return 2 * (longueur + largeur)
  }
}

// Implémentation Question 2

let rectangle = Rectangle(longueur: 5.0, largeur: 3.0)
print("Aire du rectangle : \(rectangle.area())")
print("Périmètre du rectangle : \(rectangle.perimeter())")

// Implémentation Question 3
let rectangle1 = Rectangle(longueur: 12.0, largeur: 2.5)
let rectangle2 = Rectangle(longueur: 4.0, largeur: 6.0)

//Question 4
var listeRectangles = [Rectangle]()

let rectangle3 = Rectangle(longueur: 5.0, largeur: 3.0)
let rectangle4 = Rectangle(longueur: 4.0, largeur: 6.0)
let rectangle5 = Rectangle(longueur: 2.0, largeur: 4.0)

listeRectangles.append(rectangle3)
listeRectangles.append(rectangle4)
listeRectangles.append(rectangle5)

//Question 5
// Tri de la liste en fonction de la surface
let listeTrieeSurface = listeRectangles.sorted { $0.area() < $1.area() }

print("Liste de rectangles triée par surface :")
for rectangle in listeTrieeSurface {
    print("Rectangle de Longueur: \(rectangle.longueur) et de Largeur: \(rectangle.largeur) a pour Surface: \(rectangle.area())")
}

// Tri de la liste en fonction du périmètre
let listeTrieePerimetre = listeRectangles.sorted { $0.perimeter() < $1.perimeter() }

print("Liste de rectangles triée par périmètre :")
for rectangle in listeTrieePerimetre {
    print("Rectangle de Longueur: \(rectangle.longueur) et de Largeur: \(rectangle.largeur) a pour Périmètre: \(rectangle.perimeter())")
}



//Question 6
print("Nombre de rectangles créés : \(Rectangle.nb)")