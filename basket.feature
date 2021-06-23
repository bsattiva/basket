	Feature: Validate the basket functionality

		Scenario 1: Add and check out

			Given I am presented the list of items
			Then the basket is shown and it is empty
			And the total price is 0
			And the number of items is 0
			And the total discount is 0

			When I click on [Buy] for an item in the list of products with disount
			Then the basket is updated
			And the name of the item is shown in the list

			And the total price is accurate #price of the item being clicked
			And the number of items is 1
			And the total discount is accurate #discount of the item being clicked

			And the red count baloon at the basket icon in the top menu shows 1

			When I click on [Buy] button for an item in the list of products #another product in the list
			Then the basket is updated
			And the name of the item is shown in the list #along with the first one

			And the total price is accurate #price of the items 1+2
			And the number of items is 1
			And the total discount is accurate #discount of items 1+2

			And the red count baloon at the basket icon in the top menu shows 2

			When I press [Checkout] button
			Then I am able to check out




		Scenario 2: Add, remove items, check out

			Given I am presented the list of items
			Then the basket is shown and it is empty
			And the total price is 0
			And the number of items is 0
			And the total discount is 0

			When I click on [Buy] for an item in the list of products with disount
			Then the basket is updated
			And the name of the item is shown in the list

			And the total price is accurate #price of the item being clicked
			And the number of items is 1
			And the total discount is accurate #discount of the item being clicked

			When I click on [Buy] button for an item in the list of products #another product in the list
			Then the basket is updated
			And the name of the item is shown in the list #along with the first one

			And the total price is accurate #price of the items 1+2
			And the number of items is 1
			And the total discount is accurate #discount of items 1+2

			When I delete item 1 from the basket
			Then the basket is updated 
			And the name of the item 1 is not shown in the list
			And the number of items is 1
			And the total price is accurate # includes only item 2
			And the total discount is accurate # includes only item 2

			And the red count baloon at the basket icon in the top menu shows 1


			When I press [Checkout] button
			Then I am able to check out





		Scenarion 3: cannot checkout if no items

			Given I am presented the list of items
			Then the basket is shown and it is empty

			When I press [checkout]

			Then I am not able to check out 

			When I click on [Buy] for an item in the list of products with disount
			Then the basket is updated
			And the name of the item is shown in the list
			When I delete item 1 from the basket

			When I press [checkout]

			Then I am not able to check out 



