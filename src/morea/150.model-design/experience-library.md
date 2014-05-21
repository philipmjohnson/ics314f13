---
title: "Practice WOD: Library"
published: true
morea_id: experience-library
morea_type: experience
morea_summary: "Design the ER diagram for a Library application"
morea_sort_order: 2
morea_labels:
---

# Practice WOD: Library

In this WOD, you will read a textual description of a domain model and the ways the data needs to be manipulated, then generate an ER diagram representing this model.

## Library domain model

At the Hamilton Library, students and faculty take out books on loan.  A student or faculty member can take out up to five books at a time.  Several copies of the same book can exist for those in high demand.  Borrowers may make reservations when all copies of a book are out on loan.

Items needing to be stored include the borrower of a book’s name; the date a book is borrowed; the ISBN number, title, and author for a book;  the name of the student or faculty member making a reservation, and the date reserved.

The Library staff needs to be able to do the following:

  * Check whether a book being returned has been reserved;
  * Check which borrower has a particular book out on loan;
  * Check which books are out on loan to a particular borrow;
  * Check whether a copy of a particular title is loaned out or not.
  * Check which reservation should receive the newly turned in book.

## Instructions

Please construct an ER diagram using Lucid Charts of the Library domain model.

  1. Start your timer.
  2. Call your chart ERD-Library.
  3. Use Lucid Charts and the appropriate crows foot notations. 
  4. Specify the entity fields in your entity descriptions. Be careful to exclude Java fields that implement relationships.
  5. Make sure to follow the model design guidelines. 
  6. When finished, download a PNG file containing your description. 

When finished, stop your timer, and record how many minutes it took you to complete the WOD. 

{% include wod-times.html Rx="< 12 min" Av="12-16 min" Sd="16-20 min" DNF="20+ min" %}

## Demonstration

Once you've finished doing the WOD a single time, watch me do it:

{% include youtube.html id="fSAq1w-jG_E" %}

{% include wod-warning.html %}






