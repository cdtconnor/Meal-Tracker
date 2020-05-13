//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Connor Thompson on 4/7/20.
//  Copyright © 2020 Connor Thompson. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
  
    var meals: [Meal] {
        let firstBreakfastFood = Food(name: "Eggs", description: "Scrambled with bacon in a frying pan.")
        let secondBreakfastFood = Food(name: "Hashbrowns", description: "Cut potatoes then fry in oil until brown.")
        let thirdBreakfastFood = Food(name: "Bacon", description: "Key food in all breakfast meals.")
        let breakfast = Meal(name: "Breakfast", food: [firstBreakfastFood, secondBreakfastFood, thirdBreakfastFood])
        
        let firstLunchFood = Food(name: "Sandwich", description: "Easy to fix. Always delicious.")
        let secondLunchFood = Food(name: "Chips", description: "Put a few in a sandwich for enhanced flavor.")
        let thirdLunchFood = Food(name: "Apple", description: "An apple a day keeps the doctor a day.")
        let lunch = Meal(name: "Dinner", food: [firstLunchFood, secondLunchFood, thirdLunchFood])
    
        let firstDinnerFood = Food(name: "Steak", description: "Everyone needs some good protien.")
        let secondDinnerFood = Food(name: "Potatoes", description: "Great addition to go along with steak.")
        let thirdDinnerFood = Food(name: "Broccoli", description: "Always finish out the food pyramid.")
        let dinner = Meal(name: "Dinner", food: [firstDinnerFood, secondDinnerFood, thirdDinnerFood])
        
        return[breakfast, lunch, dinner]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals[section].food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
        
    }
}
