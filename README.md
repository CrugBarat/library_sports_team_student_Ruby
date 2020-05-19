# Classes

This exercise was tasked to me by CodeClan, Glasgow where I studied towards a PDA Level 8 in Professional Software Development. The exercise brief can be found below.

**Learning Objectives**
 
- Create your own class
- Create multiple objects
- Add some properties
- Use accessors
- Add some methods and behaviours
- Get methods and behaviours to interact with properties

**Part A**

- Create a class called Student that takes in a name (String) and a cohort when an new instance is created
- Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student
- Add in Setter methods to update the students name and what cohort they are in
- Create a method that gets the student to talk
- Create a method that takes in a students favourite programming language and returns it as part of a string

**Part B**

- Make a class to represent a Team that has the properties Team name, Players and a Coach
- For each property in the class make a getter method than can return them
- Create a setter method to allow the coach’s name to be updated
- Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods
- Create a method that adds a new player to the players array
- Add a method that takes in a string of a player’s name and checks to see if they are in the players array
- Add a points property into your class that starts at 0
- Create a method that takes in whether the team has won or lost and updates the points property for a win

**Extension**

- Create a class for a Library that has an array of books
- Each book should be a hash with a title, which is a string, and rental details
- Create a getter for the books
- Create a method that takes in a book title and returns all of the information about that book
- Create a method that takes in a book title and returns only the rental details for that book
- Create a method that takes in a book title and adds it to our book list
- Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it’s due to be returned
