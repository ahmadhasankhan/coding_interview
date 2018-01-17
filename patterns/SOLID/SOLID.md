#### SOLID stands for:

* Single Responsibility Principle
* Open/Closed Principle
* Liskov Substitution Principle
* Interface Segregation Principle
* Dependency Inversion Principle

##### Single Responsibility Principle

A class should have only a single responsibility.

Or 

A class should have only one reason to change.

Quite simple idea, right? Class should have just one responsibility and one reason to change.

Sometimes developers struggling with definition of 'responsibility'. It's much easier to just add another line to method, then another one and you have huge class which is responsible for too many things.

It's a skill which programmers should develop: to notice the moment when class is getting too big and should be refactored into couple smaller ones.

I feel like the best way to show this principle in action is to go through example. My idea is to start from code which you might have in your app and refactor that following Single Responsibility Principle.
