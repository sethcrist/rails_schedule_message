# The Model View Controller (MVC)

## Models
represents the data-related logic and directly manages the data, logic, and rules of the application

user
* query for records
* wrap individual records

## View
displaying the application's data to the user. The view retrieves data from the model and renders it for the user to interact with, but it does nothing with the data itself (such as processing or modifying it).

## Controller
responds to user input (e.g., clicking a link or submitting a form), interacts with the model to retrieve or update data, and then renders the appropriate view to present the data to the user