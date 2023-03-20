//
//  Task.swift
//  PhotoHunt
//
//  Created by Ashley Guerra on 3/19/23.
//


import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your go-to coffee shop ☕️",
                 description: "Where do you like to stop for a latte?"),
            Task(title: "Your favorite book store 📚",
                 description: "Where do you go to buy new books?"),
            Task(title: "Your favorite local restaurant 🍝",
                 description: "Where do you like to grab dinner around town?"),
            Task(title: "Your favorite dog park 🐕‍🦺",
                 description: "Where does your dog like to play?")
        ]
    }
}

