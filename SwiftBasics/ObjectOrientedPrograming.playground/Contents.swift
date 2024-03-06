import Foundation

/*
 Object Oriented Programing====
 during the life of app, we create and destroy objects--
 create = initialize (init) = Allocate (add to memory)
 Destroy = Deinitialize (deinit) = Deallocate (remove to memory)
 
 Automatic Reference Counting (ARC)======
 a live count of number of object in memory--
 create 1 object, count goes up by 1
 destroy 1 object, count goes down by 1
 
 the more object in memory, the slower the app performs--
 we want to keep ARC count as low as possible
 we want create object only when we need them
 we want destroy object as soon as we no longer need them
 
 for example: if an app has 2 screens and user is moving from screen 1 to screen 2, we only want to ALLOCATE screen 2 WHEN we need it. (when user clicks a button to segue to screen 2). When we get to screen 2, we want to deallocate screen 1.
 
 There are 2 types of memory
 Stack & Heap
 Only objects in the Heap are counted towards ARC
 
 detail link
 https://www.youtube.com/watch?v=-JLenSTKEcA&list=PLwvDm4Vfkdphr2Dl4sY4rS9PLzPdyi8PM&index=9
 
 object in stack:
 String, Bool, Int... Struct, Enum
 Small arrays, tuples, and dictionaries that are created within a function scope and don't escape the function's scope might be allocated on the stack. These are typically short-lived and have a limited scope.
 
 object in heap:
 Functions Closs, Actors, Closure
 Larger arrays, tuples, and dictionaries, or those that are created globally or stored in long-lived data structures (such as class instances or closures that escape their defining scope), are generally allocated on the heap.
 
 
 iphone is a "multi-tread environment"
 there are multiple "threads" or "engines" running simutaneously
 Each threads has a stack
 but there is only one Heap for all threads
 
 therefore:
 stack is faster, lower memory footprint,  !!!! preferable
 Heap is slower, higher memory footprint.  risk of treading issues (multiple threads try accessing same data in Heap)
 
 thats why SwhiftUI has so many Struct instead of Class
 
 
 Why class can't be in Stack? Value vs Reference types
 Objects in the stack are "Value" types. create copy in each tread
 when you edit a Value type, you create a copy of it with new data
 
 Object in the Heap are "Reference" types. shared in all treads
 when you edit a Reference type, you edit the object that you referencing. this "reference" is called "pointer" because it points an object in the Heap (in memory)
 
 */

struct MyFirstObject {
    let title: String = "Hello World"
}

class MySecondObject {
    let title: String = "Hello World"
}

/*
 Class vs Struct explain to 5 year old
 
 imagin a school and in the school there are many classroom
 within each classroom, there are quizzes
 during the day, the teacher will hand out many different quizzes to different classes, the student will answer the quizzes and return them back to teacher
 
 "school" = APP
 "classroom" = Class
 "quiz" = struct    
 
 we have a classroom and there are many actions occure inside classroom
 in code, we create a class and perform actions within the class
 
 there are many different types of quizzes, the teacher hands out the quizzes and the students take the quizzes and return to teacher
 in code, we create manystruct and pass them around our app with ease.
 
 Note: not perfect examp;e, a quiz can be a class too lol

 
 we want use class for things like:
    "Manager" "DataService" "Service" "Factory" "ViewModel"
    Objects that we want create and want to PERFORM ACTION inside
 
we want to use a struct for things like:
    // Data Model
    // Objects that we create and pass around our app
 
 */
