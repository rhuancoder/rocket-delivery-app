//
//  DataSourceMock.swift
//  RocketDelivery
//
//  Created by Rhuan Carvalho on 19/03/24.
//

import Foundation

let ordersMock: [OrderType] = [
    OrderType(id: 1, name: "Restaurants", image: "hamburger"),
    OrderType(id: 2, name: "Market", image: "market"),
    OrderType(id: 3, name: "Drugstore", image: "drug-store"),
    OrderType(id: 4, name: "Pet", image: "petshop"),
    OrderType(id: 5, name: "Discounts", image: "discounts"),
    OrderType(id: 6, name: "Drinks", image: "drinks"),
    OrderType(id: 7, name: "Gourmet", image: "gourmet")
]

let storesMock: [StoreType] = [
    StoreType(
        id: 1,
        name: "Monstro Burger",
        logoImage: "monstro-burger-logo",
        headerImage: "monstro-burger-header",
        location: "R274 Bernier Extension, Bryanshire, NV",
        stars: 4,
        products: [
            ProductType(id: 1, name: "Classic Burger", description: "Beef burger with cheese, lettuce and tomato", image: "classic_burger", price: 14.99),
            ProductType(id: 2, name: "Burger with Bacon", description: "Beef burger with cheese, crispy bacon, lettuce and tomato", image: "bacon_burger", price: 16.99),
            ProductType(id: 3, name: "French fries", description: "Portion of crispy fries", image: "fries", price: 5.99),
            ProductType(id: 4, name: "Soda", description: "355ml soda can", image: "soda", price: 3.99),
            ProductType(id: 5, name: "Vanilla Ice Cream", description: "Cup of vanilla ice cream", image: "vanilla_ice_cream", price: 4.99),
        ]
    ),
    StoreType(
        id: 2,
        name: "Food Court",
        logoImage: "food-court-logo",
        headerImage: "food-court-header",
        location: "2406 Rowe Square, West Viki, CO",
        stars: 4,
        products: [
            ProductType(id: 6, name: "Margherita Pizza", description: "Pizza with tomato sauce, mozzarella cheese and basil", image: "margherita_pizza", price: 18.99),
            ProductType(id: 7, name: "Pepperoni Pizza", description: "Pizza with tomato sauce, mozzarella cheese and pepperoni", image: "pepperoni_pizza", price: 19.99),
            ProductType(id: 8, name: "Four Cheeses Pizza", description: "Pizza with mozzarella, provolone, parmesan and gorgonzola cheese", image: "four_cheeses_pizza", price: 21.99),
            ProductType(id: 9, name: "Lasagna Bolognese", description: "Lasagna with bolognese sauce, cheese and béchamel", image: "lasagna", price: 22.99),
            ProductType(id: 10, name: "Spaghetti Carbonara", description: "Spaghetti with carbonara sauce", image: "spaghetti_carbonara", price: 20.99)
        ]
    ),
    StoreType(
        id: 3,
        name: "Carbron",
        logoImage: "carbron-logo",
        headerImage: "carbron-header",
        location: "84163 Bernita Mission, Lake Hedwigburgh, MT",
        stars: 4,
        products: [
            ProductType(id: 11, name: "Rump Cover", description: "Grilled rump cover served with rice, farofa and vinaigrette", image: "rump_cover", price: 29.99),
            ProductType(id: 12, name: "Braised Ribs", description: "Delicious slow-roasted prime rib served with potatoes", image: "ribs", price: 26.99),
            ProductType(id: 13, name: "Flank Steak", description: "Grilled flank steak served with rice, farofa and vinaigrette", image: "flank_steak", price: 27.99),
            ProductType(id: 14, name: "Rump Tail", description: "Grilled rump tail served with rice, farofa and vinaigrette", image: "rump_tail", price: 28.99),
            ProductType(id: 15, name: "Mixed Grill", description: "Mixed barbecue with sausage, chicken and beef, served with rice, farofa and vinaigrette", image: "mixed_grill", price: 34.99)
        ]
    ),
    StoreType(
        id: 4,
        name: "Bakery",
        logoImage: "bakery-logo",
        headerImage: "bakery-header",
        location: "95415 Wendell Rapids, Port Wilbur, VA",
        stars: 3,
        products: [
            ProductType(id: 16, name: "French Bread", description: "Fresh french bread", image: "french_bread", price: 0.50),
            ProductType(id: 17, name: "Croissant", description: "Puff pastry croissant", image: "croissant", price: 2.99),
            ProductType(id: 18, name: "Sweet Bread", description: "Sugar-coated sweet bread", image: "sweet_bread", price: 3.99),
            ProductType(id: 19, name: "Chocolate Cake", description: "Slice of chocolate cake", image: "chocolate_cake_slice", price: 4.99),
            ProductType(id: 20, name: "Coffee", description: "Hot coffee", image: "coffee", price: 1.99)
        ]
    ),
    StoreType(
        id: 5,
        name: "Açaí Panda",
        logoImage: "acai-panda-logo",
        headerImage: "acai-panda-header",
        location: "540 Coralee Ridge, South Verla, NM",
        stars: 4,
        products: [
            ProductType(id: 21, name: "Small Acai", description: "Acai in a 300ml bowl with granola and banana", image: "small_acai", price: 8.99),
            ProductType(id: 22, name: "Medium Acai", description: "Acai in a 500ml bowl with granola, banana and condensed milk", image: "medium_acai", price: 10.99),
            ProductType(id: 23, name: "Large Acai", description: "Acai in a 700ml bowl with granola, banana, condensed milk and strawberries", image: "large_acai", price: 13.99),
            ProductType(id: 24, name: "Strawberry Smoothie", description: "Strawberry smoothie made with natural yogurt", image: "strawberry_smoothie", price: 6.99),
            ProductType(id: 25, name: "Banana and Cocoa Smoothie", description: "Banana and cocoa smoothie made with natural yogurt", image: "banana_cocoa_smoothie", price: 6.99)
        ]
    ),
]
