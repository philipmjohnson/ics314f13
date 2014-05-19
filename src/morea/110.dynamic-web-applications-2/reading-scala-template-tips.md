---
title: "Scala template tips"
published: true
morea_id: reading-scala-template-tips
morea_summary: "Sample code for common Scala template operations"
morea_type: reading
morea_sort_order: 3
morea_labels:
---

# Scala template tips

Writing scala templates can be tricky, so here are a few examples of template code to help you understand how things work.

## Simple Iteration

The following code:

    @for(index <- 0 to 5) {
       <p>@index</p>
    }

produces:

    <p>0</p>
    
    <p>1</p>
    
    <p>2</p>
    
    <p>3</p>
    
    <p>4</p>
    
    <p>5</p>

You can eliminate the extra newline by moving the closing brace.

The following code:

    @for(index <- 0 to 5) {
       <p>@index</p>}

produces

    <p>0</p>
    <p>1</p>
    <p>2</p>
    <p>3</p>
    <p>4</p>
    <p>5</p>

Warning: the open curly brace must occur on the first line, otherwise the template compiler will not understand where to end the @-expression.

## Conditional

Let's say you wanted to do something different the first time through the loop.

The following code:

    @for(index <- 0 to 5) {
       <p>@if(index == 0) {Fizz} else {@index}</p>}

produces:

    <p>Fizz</p>
    <p>1</p>
    <p>2</p>
    <p>3</p>
    <p>4</p>
    <p>5</p>

NOTE: Newlines are significant for If-then-else clauses!

The "} else {" must all appear on the same line.

So, this is OK:

    @if(isLoggedIn) {
      <li><a href="@routes.Application.profile()">Profile</a></li>
    } else {
      <li><a href="@routes.Application.index()">Home</a></li>
    }

But this will not be parsed correctly:

    @if(isLoggedIn) {
      <li><a href="@routes.Application.profile()">Profile</a></li>
    }
    else {
      <li><a href="@routes.Application.index()">Home</a></li>
    }

## Lists

If you pass a List[String] to a template, you can iterate through it. Say you declare the following parameter on the first line of your template file:

    @(surferNames: List[String])

Then the following code:

    @for(name <- surferNames) {
       <p>@name</p>}

might produce:

    <p>Eddie Aikau</p>
    <p>Pauline Menczer</p>

## Getting the index

If you need to know how many times you've gone through a loop, use zipWithIndex:

    @for((name, index) <- surferNames.zipWithIndex) {
       <p>@index, @name</p>}

might produce:

    <p>1, Eddie Aikau</p>
    <p>2, Pauline Menczer</p>

## Maps

Maps work just like lists. Say you declare the following parameter on the first line of your template file:

@(namesAndTowns: Map[String, String])

Then the following code:

    @for((name, town) <- namesAndTowns) {
       <p>@name, @town</p>}

might produce:

    <p>Eddie Aikau, Haleiwa, HI</p>
    <p>Pauline Menczer, Brisbane, Australia</p>

## Maps with indexes

Use the same trick as with lists:

    @for(((name, town), index) <- namesAndTowns.zipWithIndex) {
       <p>@index, @name, @town</p>}

might produce:

    <p>1, Eddie Aikau, Haleiwa, HI</p>
    <p>2, Pauline Menczer, Brisbane, Australia</p>

## Field instances

Let's say you create a PersonData class, with fields "name" and "address". Then you pass to your template a Form based upon that person:

    @(PersonForm : Form[PersonData])

You can access the "name" field with PersonForm("name"), but what you get is an instance of the Field class, not the actual name field from PersonData. This Field instance is supposed to represent a form field, so you can extract values from it as follows:

    PersonForm("name").name
    PersonForm("name").id
    PersonForm("name").value

If you want, you can set a default value for the value as follows:

    PersonForm("name").value.getOrElse("")

Finally, to test the value of a form field, you have to use the Scala "Some" construct:

    @if(field("label").value == Some("Personal")) {
      <h3>TRUE</h3> } else {
      <h3>FALSE</h3>
    }

