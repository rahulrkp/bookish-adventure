//
//  ARCViewController.swift
//  TestProj21
//
//  Created by Rahul Patel on 3/12/21.
//

import UIKit

fileprivate class Person {
    var name : String
    var apartment: Apartment?
    init(str: String) {
        name = str
    }
    deinit {
        print("deinit Person=\(name)")
    }
}

class Apartment {
    var unitNo: String
    fileprivate weak var tenant: Person?
    init(unit: String) {
        self.unitNo = unit
    }
    deinit {
        print("deinit Apartment=\(unitNo)")
    }
}

class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit { print("\(name) is being deinitialized") }
}

class CreditCard {
    let number: Int
    unowned let customer: Customer
    init(number: Int, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit { print("Card #\(number) is being deinitialized") }
}

class HTMLElement {

    let name: String
    let text: String?

    lazy var asHTML: () -> String = {
        if let text = self.text {
            return "<\(self.name)>\(text)</\(self.name)>"
        } else {
            return "<\(self.name) />"
        }
    }

    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }

    deinit {
        print("\(name) is being deinitialized")
    }

}

class ARCViewController: UIViewController {
    fileprivate var refer3: Person?
    override func viewDidLoad() {
        super.viewDidLoad()

        let heading = HTMLElement(name: "h1")
        let defaultText = "some default text"
        heading.asHTML = {[unowned self] in
            return "<\(heading.name)>\(heading.text ?? defaultText)</\(heading.name)>"
        }
        print(heading.asHTML())
        return
        let customer = Customer(name: "Customer")
        let creditCard = CreditCard(number: 123, customer: customer)
        customer.card = creditCard

        let apartment = Apartment(unit: "100")
        let person = Person(str: "Rahul")
        apartment.tenant = person
        person.apartment = apartment
        print(apartment.unitNo, apartment.tenant?.apartment)
        print(person.name, person.apartment?.unitNo)
        var x = 5
        var y = 5

        let someClosure = { [x] in
          print("\(x), \(y)")
        }
        x = 6
        y = 6

        someClosure()        // Prints 5, 6
        print("\(x), \(y)")  // Prints 6, 6
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
