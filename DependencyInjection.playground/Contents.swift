import UIKit

// denpendency inject means inject the data into child view instead of create data model directly inside childview

class NetWorkManager {
    func fetchIngredients () {
        print("fetched ingredients")
    }
}

class Bag {
    var item:[String] = []
    
    func placeOrder(){
        print("order placed")
    }
}

// access directly from child...
// two data flow
class BurritoIngredientsViewModel {
    let networkManager = NetWorkManager()
    let bag = Bag()
    
    func fetchItems () {
        networkManager.fetchIngredients()
    }
    
    func placeOrder(){
        bag.placeOrder()
    }
}

// dependency injection...
// simplify data flow ... one flow as params in this example
// seperation of concers... dont need create in child view
// easier testing
class TacoIngredientViewModel{
    
    let networkManager: NetWorkManager
    
    let bag: Bag
    
    init(networkManager: NetWorkManager, bag: Bag){
        self.networkManager = networkManager
        self.bag = bag
    }
    
    func fetchItems () {
        networkManager.fetchIngredients()
    }
    
    func placeOrder(){
        bag.placeOrder()
    }
}

// useage in parent view and pass in the data when create instance of child class inject data in
struct MealCategoryView{
    let networkManager = NetWorkManager()
    let bag = Bag()
    
    func gotoChildView(){
        let vc = TacoIngredientViewModel(networkManager: networkManager, bag: bag)
        
        //... presend or push to child
    }
}

