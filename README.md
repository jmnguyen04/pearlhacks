# MentorMatch: Pearlhacks24 Submission
![](https://github.com/jmnguyen04/pearlhacks/Demo.gif)

[devpost.com/software/mentor-match-x762n0](https://devpost.com/software/mentor-match-x762n0)

This project was completely created in 24 hours.

## Inspiration
When brainstorming ideas for an app, we considered how our own team is constructed of women in various technologically rich fields who have experienced the search for advice, research opportunities, and connections in the industry without really knowing where to look first. Thus came the idea of MentorMatch.

## What it does
MentorMatch is an app that allows users to find and connect with mentors, mentees, and peers in the tech industry, which is often hard for underrepresented gender minorities. Through a series of questions answered during the onboarding process, new users generate a profile to display on the app. Users can then engage with several social features on the app to find community and professional guidance. (Most of these have non-fully functional implementations. The app serves as a proof of concept.)

## How we built it
We began with a design in Figma to lay out our ideas and to get a better sense of what we wanted the app to look like. We then took our design and feature ideas to the SwiftIUI framework, where we coded up the foundation for an app that would implement the features we'd decided on. MentorMatch's mobile app is written entirely in Swift with the user interface written with SwiftUI. We used no other tools for the build, but would if given more time.

## Challenges we ran into
We ran into several challenges with both the design and execution of MentorMatch. Sarah, our lead developer, was very new to Swift and SwiftUI and therefore struggled with implementing some basic features of an app such as storing multiple users and navigating between pages. The time spent working on the app itself also meant that standard features like a robust backend or networking between real users went unimplemented. In the designing of our app, we encountered some issues with using Autolayout with Figma because the orientation of the screen components was repeatedly misaligned. Additionally, after a long battle trying to implement an Auth0 login page, we decided to scrap the use of Auth0 in favor of a local signin and data storage system.

## Accomplishments that we're proud of
We are proud to say that we have created a dynamic database that changes as new user data is input when a new user signs up. Overcoming this technical challenge was very difficult and does a lot for the functionality of our app. We also created a beautiful theme, logo, brand, and design for our app that all fits cohesively as a final product.

## What we learned
In designing this app, Mahi was able to learn more about the use of Autolayout in Figma in grouping components together in order to prevent the issue of incorrect orientation and misaligned details in her final layout. In implementing this app, Sarah was able to become more comfortable with Swift and SwiftUI and learn new features such as data management, state management and view navigation.

## What's next for Mentor Match
We believe that these foundations promise great things for Mentor Match. For starters, over the course of this hackathon, we were able to design a series of questions that will help curate a user's profile and their recommended mentors/mentees, but these questions were not able to be implemented into the code within this time. So, we believe our first step would be finishing the establishment of our user profiles via these questions in the app itself. There's only so much that can be completed in 24 hours, but we have already begun to establish a usable and flexible user database, and we believe that given further time on this project, it could show real promise in what it could do. We think that expanding this database to a less localized version to allow for more user storage and customization would be the next step for MentorMatch. We've also thrown around ideas of how to implement AI with our project to help sort matches and recommend mentors/mentees that best align with each individual. Given the advancements that have already been made in AI, it could be used to analyze user's bios and look for key characteristics that can help to make a successful match rather than just relying on a pre-determined set of answers to the questions we have when a user first makes an account.

## Built with
Swift, SwiftUI, Figma

<br>
<br>

All code by Sarah Haddix.
