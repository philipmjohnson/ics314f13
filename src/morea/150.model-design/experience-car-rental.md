---
title: "Practice WOD: Car rental"
published: true
morea_id: experience-car-rental
morea_type: experience
morea_summary: "Design the ER diagram for a Car Rental application"
morea_sort_order: 3
morea_labels:
---

# Practice WOD: Car Rental

In this WOD, you will read a textual description of a domain model and the ways the data needs to be manipulated, then generate an ER diagram representing this model.

## Car rental domain model

A car rental company called RentAJunker keeps a number of offices in a variety of cities and locations within each city. Each location maintains a number of cars and trucks. The car types include: Economy, Standard, and Van. Truck types include Box Trucks and Cargo Vans.

RentAJunker maintains a list of all their customers. When a customer first rents a vehicle, the company records the customer name, address, and phone number. A customer is usually identified by their phone number.

A customer can reserve a vehicle for specific days, can rent a vehicle, or return the vehicle that she/he has rented. To make a reservation, a customer provides the location, the type of the vehicle and the day and time for which she/he would like to pick up and return the vehicle. When a customer returns a vehicle the clerk enters the date, the time, the odometer reading and whether the gas tank is full.

## Instructions

Please construct an ER diagram using Lucid Charts of the Car Rental domain model.

  1. Start your timer.
  2. Call your chart ERD-CarRental.
  3. Use Lucid Charts and the appropriate crows foot notations. 
  4. Specify the entity fields in your entity descriptions. Be careful to exclude Java fields that implement relationships.
  5. Make sure to follow the model design guidelines. 
  6. When finished, download a PNG file containing your description. 

When finished, stop your timer, and record how many minutes it took you to complete the WOD. 

{% include wod-times.html Rx="< 12 min" Av="12-16 min" Sd="16-20 min" DNF="20+ min" %}

## Demonstration

Once you've finished doing the WOD a single time, watch me do it:

{% include youtube.html id="SGTwqL6aeNs" %}

{% include wod-warning.html %}






