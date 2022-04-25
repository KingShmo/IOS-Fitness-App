Original App Design Project - README Template
===

# Calorie Coach

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)
3. [Unit 11 Checklist](#Unit-11-Checklist)
4. [Unit 12 Checklist](#Unit-12-Checklist)
5. [Unit 13 Checklist](#Unit-13-Checklist)

## Overview
### Description
Fitness app that where a user can log calories and track them for a specific calorie goal to hit. The app also has individualized meal prep plans and personalized workouts based on if the user wants to lose, maintain, or gain weight.

### App Evaluation
- **Category:** Fitness / Health
- **Mobile:** This app would be primarily developed for mobile but would perhaps be just as viable on a computer to track calories throughout the day or even when cooking meals to view recipes. Functionality wouldn’t be limited to mobile devices, however mobile version could potentially have more features.
- **Story:** Analyze users choice of eating habits and goals, and provide steps and options to reach intended goals. And once user has hit such weight goals, they can create new goals which we can assess and then provide specified steps and options to achieve the new goal.
- **Market:** Any individual could to use this app, and it is intended for people that want to be more active or need help when changing to a more active lifestyle. 
- **Habit:** This app would be used frequently as they would have it open when working out, cooking a specific recipe, or when logging in calories. It would be an app users open daily as people eat every day and would track the calories of meals.
- **Scope:** First we would start by asking people if they want to lose, maintain, or gain weight. Then we would show them specific meal preps, workouts, and a personalized calorie goal to reach everyday based on their choice. Large potential for use with athletes and people who want a change in their life and lead a healthier lifestyle.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

- [x] User can set up goals they want to reach
- [x] User can input their food choices
- [x] User can input their lifestyle habits
- [x] User can correctly sign in and sign up
- [x] App automatically tracks input to encourage behavioral changes
- [x] User can look at app suggestions for improving diet / habits
- [x] User can view their improvements over time

**Optional Nice-to-have Stories**

- [ ] User can search for specific food replacements
- [ ] User can search for workouts that improve specific muscles
- [x] User can link with friends to track each other as well
- [ ] User can share their achievements on social media

### 2. Screen Archetypes

* Goals Screen
   * User can set up goals they want to reach
* Diet Screen
   * User can input their food choices
* Lifestyle Screen
   * User can input their lifestyle habits
* Suggestions Screen
   * User can look at app suggestions for improving diet / habits
* Tracker Screen
   * App automatically tracks input to encourage behavioral changes
   * User can view their improvements over time

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Home Menu

**Flow Navigation** (Screen to Screen)

* Goals Screen
   * Home
* Diet Screen
   * Home
* Lifestyle Screen
   * Home
* Tracker Screen
   * Home
   * Suggestions Screen
* Suggestions Screen
   * Home
   * Tracker Screen

## Wireframes
[Add picture of your hand sketched wireframes in this section]
<img src="https://user-images.githubusercontent.com/89810484/159196987-2aef8be3-1da0-4420-b6ea-6313652cc45b.jpg"
 width=600>
<img src="https://user-images.githubusercontent.com/89810484/159197075-c504032b-8a4f-4ef3-ac97-7b21a1d066e1.jpg"
 width=600>
<img src="https://user-images.githubusercontent.com/89810484/159197083-619c8f43-d56a-44bb-8df3-a074b1f7df7f.jpg"
 width=600>
<img src="https://user-images.githubusercontent.com/89810484/159197086-541e4191-c15a-4bfc-8461-db6f09075a5a.jpg"
 width=600>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
[This section will be completed in Unit 9]
### Models
| Property | Type | Description |
| ------------- | ------------- | ------------ |
| objectId  | String  | unique id of user profile  |
| image | File  | images for excercises and foods |
| captions | String | descriptions for types of workouts and foods |
| completedAt | DateTime | time when user completes calorie goal for the day and date when they hit desired weight goal |
| author | Pointer to user | image of user for online profile |
| activeCount| Number | number of days user has stayed active on the app (logging on daily to track calories) |
| weightGoal | Number | saved number that represents the weight the user wants to acheive |
| breakfastId | String | id of the first meal where user adds foods for the day |
| lunchId | String | id of the second meal where user adds foods for the day |
| dinnerId | String | id of the last meal where user adds foods for the day |
| calorieCountPerFood | Number | number of calories in each different food the user adds to one of the three meals in the day |
| calorieGoal | Number | number of calories the user wants to eat each day |
### Networking
| Crud | Example |
| ------------- | ------------- |
| Get | Retrieve number of steps |
| Get | Retrieve amount of calories and other nutrients in food |
| Get | Retrieve meal prep recipes |
| Get | Retrieve workout splits and exercises |

```
// iOS
// (GET) Query all objects to display associated with user
let query = PFQuery(className:"objectId")
query.whereKey("author", equalTo: currentUser)
query.findObjectsInBackground { (calorieGoal: [PFObject]?, error: Error?) in
   if let error = error {
      print(error)
   } else if let calorieGoal = calorieGoal {
      print("Successfully retrieved calorieGoal.")
      // Display goal and closeness to achieving it
   }
}
query.findObjectsInBackground { (stepNum: [PFObject]?, error: Error?) in
   if let error = error {
      print(error)
   } else if let stepNum = stepNum {
      print("Successfully retrieved stepNum.")
      // Display total step number (all time / weekly / daily) and goals for each
   }
}
query.findObjectsInBackground { (mealPrep: [PFObject]?, error: Error?) in
   if let error = error {
      print(error)
   } else if let mealPrep = mealPrep {
      print("Successfully retrieved mealPrep.")
      // Display all meal preps (breakfastId / lunchId / dinnerId) stored in mealPrep
   }
}
query.findObjectsInBackground { (weightGoal: [PFObject]?, error: Error?) in
   if let error = error {
      print(error)
   } else if let weightGoal = weightGoal {
      print("Successfully retrieved weightGoal.")
      // Display goals for weight and exercises associated with the goal
   }
}
```

### Sprint 1 gif

<img src='http://g.recordit.co/Tjtdhoj3xa.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

## Unit 11 Checklist

### Updated status of issues in Project board (2pts)
Project Board has been updated. Currently existing issues have been moved to their appropriate spots and new issues have been made to solve in future sprints.

### Sprint planned for next week (Issues created, assigned & added to project board) (3pts)
New assignments for next sprint are planned. The main plans for next sprint involve:
* Completing the launch screen and app icon
* Complete missing components of the last remaining screens
* Complete calculations for Goals screen to provide accurate predictions for user health
* Complete view food report button on Diet screen to track daily information
* Complete Diet tracking in the Tracking screen, it's alright if Lifestyle tracking is held off until next sprint

### Completed user stories checked-off in README (2pts)
User stories are updated above. For simplicity, completed user stories are also included below.
- [x] User can set up goals they want to reach
- [x] User can input their food choices
- [x] User can input their lifestyle habits
- [x] User can correctly sign in and sign up
- [x] User can switch between tabs using a tab control bar

### Gifs created to show build progress and added to README (3pts)
<img src='http://g.recordit.co/8JDBfeoedF.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

## Unit 12 Checklist

### Updated status of issues in Project board (2pts)
Project Board has been updated. Most important parts are now completed (except for a few) and most remaining features are more nice to have than actually required.

### Sprint planned for next week (Issues created, assigned & added to project board) (3pts)
New assignments for next sprint are planned. The main plans for next sprint involve:
* Completing design aspect of last 3 remaining screens
* Complete the components and design of extra tracking screens (not main tracker)
* Create possibility for users to search for other friends to track alongside themself
* Possibly introduce another new screen for friend tracking? this was originally part of the main tracker screen but is now possibly made its own screen

### Completed user stories checked-off in README (2pts)
User stories are updated above. For simplicity, completed user stories are also included below. The only update between this unit and unit 11 is the app being able to track user behaviors. This sprint fo us was mainly about bringing together the look of the app and understanding how we wanted a user to be able to move through the app.
- [x] User can set up goals they want to reach
- [x] User can input their food choices
- [x] User can input their lifestyle habits
- [x] User can correctly sign in and sign up
- [x] User can switch between tabs using a tab control bar
- [x] App automatically tracks input to encourage behavioral changes
- [x] Completed app icon and launch screen

### Gifs created to show build progress and added to README (3pts)
<img src='http://g.recordit.co/fqzBNqeqBO.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

## Unit 13 Checklist

### Updated status of issues in Project board (2pts)
Project Board has been updated. The important parts are completed and all remaining tasks were jobs we never got around to accomplishing.

### Sprint planned for next week (Issues created, assigned & added to project board) (3pts)
There are no more sprints as we present the app tomorrow. Overall, we did a pretty good job at following our ideas for our upcoming sprints. The only thing that was unexpected throughout sprint planning was how many times we had to change our goals for our sprint early in development. Sometimes it was because our ideas were easier than expected, but most of the time it was because we overplanned for a week and had to reevaluate what we cvould realistically get done.

### Completed user stories checked-off in README (2pts)
User stories are all completed. We ended up adding other features to our app that we felt were needed while also removing certain features that we decided were no as important as originally thought. There were features that we never got around to completing, but if we were to flesh out the idea of our app into something we actually put out into the app store, we are confident that we could've eventually completed all ideas we thought of.

- [x] User can set up goals they want to reach
- [x] User can input their food choices
- [x] User can input their lifestyle habits
- [x] User can correctly sign in and sign up
- [x] App automatically tracks input to encourage behavioral changes
- [x] User can look at app suggestions for improving diet / habits
- [x] User can view their improvements over time
- [x] User can switch between tabs using a tab control bar
- [x] Completed app icon and launch screen
- [x] User can link with friends to track each other as well

### Gifs created to show build progress and added to README (3pts)
To account for our entire app, we have multiple gifs to show off ever different section of our app.
I will update how this part of the readme looks after we finish uploading our gifs -John
Gif of login:
(gif link)
Gif of diet:
(gif link)
Gif of goals:
(gif link)
Gif of other screen:
(gif link)
Gif of other screen:
(gif link)
Gif of other screen:
(gif link)
