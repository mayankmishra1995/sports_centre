# sports_centre

TSL Ruby on Rails Technical Interview

Pre-Interview Preparation

Before the interview, we’d like you to consider an API that solves the acceptance criteria described
below, in the format described in “Deliverable” at the end of this document. We’ll discuss your proposed
solution during the interview and ask about how you might add some additional features.
There is no final and fully correct answer. We are mainly looking to understand your API design
philosophy and your approach to building high-quality services.


Overview

Imagine we manage a sports centre with tennis, basketball, football and volleyball courts. We want to
build a service that lets customers book our courts via an API. You can assume that authentication is
already handled.

Requirements

● Customers should be able to book a court for a specific day at a specific time.

The simplest use case for the API is a single person booking a single court. For example, booking
a single tennis court at 8pm on Sunday 31st May 2020.
○ You can assume that all bookings start on the hour and will last for an hour.
○ You can assume the sports centre is open 24 hours a day, 7 days a week.

● Customers should be able to find which courts are available at which times.

Show availability across all courts and allow the customer to filter by date, time and court type.
For example, tennis court N.1 is available today at 12:00 and 14:00.

● Cancel a booked reservation.

● Amend a reservation, adding some extra notes.

Deliverable

You can deliver your solution as a full Rails application, snippets of code, pseudocode or simply diagrams
and docs. We’re more interested in your overall design and architecture. However, do try and show the
following:

● The structure of your database and the data you would store.
● How you would set up your API’s routes.
● Examples of the payloads you would expect to be sent to your API.
● Example responses you would expect your API to return.
● The controller actions you would create and how they would fulfil the acceptance criteria (e.g.
pseudocode or notes on the logic they might contain).