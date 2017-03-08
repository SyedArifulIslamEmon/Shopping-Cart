//
//  ProductStore.swift
//  Shopping Cart
//
//  Created by Богдан Быстрицкий on 16/12/2016.
//  Copyright © 2016 BogdanSD. All rights reserved.
//

import Foundation

class ProductStore {
    
    class func dowloandNewProducts() -> [Product]
    {
        
        let iPad = Product(name: "iPad Pro", price: 599.0, quantity: 0, quantityMax: 5)
        
        let appleWatch = Product(name: "Apple Watch", price: 399.0, quantity: 0, quantityMax: 2)
        
        let appleTv = Product(name: "Apple TV", price: 299.0, quantity: 0, quantityMax: 10)
        
        return [iPad, appleWatch, appleTv]
        
    }
}
