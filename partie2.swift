//Question 1

protocol Shape {
    func area() -> Double
    func perimeter() -> Double
}

// Question 2
class Rectangle: Shape {
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

// Définition de la classe Triangle
class Triangle: Shape {
    var base: Double
    var hauteur: Double
    var cote1: Double
    var cote2: Double
    var cote3: Double

  init(cote1: Double, cote2: Double, cote3: Double, base: Double, hauteur: Double) {
      self.cote1 = cote1
      self.cote2 = cote2
      self.cote3 = cote3
      self.base = base
      self.hauteur = hauteur
  }

    func area() -> Double {
        return 0.5 * base * hauteur
    }

  func perimeter() -> Double {
      // Calcul du périmètre en fonction du type de triangle
      if cote1 == cote2 && cote2 == cote3 {
          // Triangle équilatéral
          return cote1 + cote2 + cote3
      } else if cote1 == cote2 || cote1 == cote3 || cote2 == cote3 {
          // Triangle isocèle
          return cote1 + cote2 + cote3
      } else {
          // Triangle quelconque
          return cote1 + cote2 + cote3
      }
  }
}

// Définition de la classe Circle
class Circle: Shape {
    var rayon: Double

    init(rayon: Double) {
        self.rayon = rayon
    }

    func area() -> Double {
        return 3.14 * rayon * rayon
    }

    func perimeter() -> Double {
        return 2 * 3.14 * rayon
    }
}

//Question 4
// Définition de la classe Square
class Square: Rectangle {
    init(cote: Double) {
        super.init(longueur: cote, largeur: cote)
    }
}

// Création d'une liste contenant trois cercles, deux rectangles et un carré
var listeShapes: [Any] = []

let cercle1 = Circle(rayon: 2.0)
let cercle2 = Circle(rayon: 3.0)
let cercle3 = Circle(rayon: 1.5)

let rectangle1 = Rectangle(longueur: 4.0, largeur: 3.0)
let rectangle2 = Rectangle(longueur: 5.0, largeur: 2.0)

let carre = Square(cote: 4.0)

listeShapes.append(contentsOf: [cercle1, cercle2, cercle3, rectangle1, rectangle2, carre])


// Question 5

for (index, shape) in listeShapes.enumerated() {
    var infoItem = ""

    if let circle = shape as? Circle {
        infoItem = "Je suis un cercle, mon rayon est \(circle.rayon), ma surface est \(circle.area()), et mon périmètre est \(circle.perimeter())"
    } else if let rectangle = shape as? Rectangle {
        infoItem = "Je suis un rectangle, ma longueur est \(rectangle.longueur), ma largeur est \(rectangle.largeur), ma surface est \(rectangle.area()), et mon périmètre est \(rectangle.perimeter())"
    } else if let square = shape as? Square {
        infoItem = "Je suis un carré, mon côté est \(square.longueur), ma surface est \(square.area()), et mon périmètre est \(square.perimeter())"
    }

    print("Item \(index + 1): \(infoItem)")
}
