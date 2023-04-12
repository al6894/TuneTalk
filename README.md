# [Codepath Group 32] Capstone Project

### :small_blue_diamond: **Date:**  April 9, 2023

## :white_check_mark: MusicLova App

Original App Design Project
===

# MusicLova: music rating and sharing app

### 1. An app that allows you to rate songs (like Rotten Tomatoes)
#### - Rate songs based on lyrics, melody, etc. (could be out of 5 stars)
#### - Maybe include a review section where people can write about their opinions too.
#### - iTunes API or whatever we want

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
[The app allows the user to search for and review songs. Users can rate the lyrics, melody, and leave a comment if they choose to.]

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:** Entertainment
- **Mobile:** Many people listen to music on their phones so our app is convenient to use when the tab out of iTunes, Spotify, or whatever streaming service they use.
- **Story:** More interactive way of finding better music based on community. Apps like Spotify recommend music but you do not see other people's opinions.
- **Market:** Possible referral to itunes with a percentage deal if the song is purchased or downloaded
- **Habit:** The average user will consume and create on this app. How frequently someone uses the app depends on how often they feel the urge to leave their opinion.There is definitely potential for users to use this app multiple times a week or even multiple times a day. Also, It will give an opportunity to grow faster as a new musician/singer.
- **Scope:** The app will be in the mid-ranges in terms of technically difficulty. The Login and Signup screens will be fairly basic but the goal is to make the home search screen and review section the main feaures of the app.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can login
* User can signup
* User can search for songs
* User can rate songs
* User can leave comments and read other people's comments.

**Optional Nice-to-have Stories**

* Make the home search screen appealing.
* Integrate OpenAI as a comment moderator to ban users from using hateful speech.
* Users can follow each other and see each other's reviews.
* App can recommend similar songs.

### 2. Screen Archetypes

* [Login]
   * User can login
* [Signup]
   * User can create account
* [Home]
   * User can search for songs
   * Tapping on result will bring user to a review screen
* [Main Review Screen]
   * Current rating of song shown to user
   * User can input their own rating
   * User can click a button that takes them to a comment section
* [Comment Section]
   * Each song will have a comment section displaying user comments.
   * Users can add their own comment.

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* [Stream]

**Flow Navigation** (Screen to Screen)

* [Login]
   * => Home
* [Signup]
   * => Login
* [Home]
   * => Main Review Screen
* [Main Review Screen]
    * => Home
    * => Comment Section
* [Comment Section]
    * => Main Review Screen


## Wireframes
[hand sketched wireframes below]
<img src="https://i.imgur.com/b2XcRE4.jpg" width="360" height="640"/>



### [BONUS] Digital Wireframes & Mockups

<img src="https://github.com/yerlandana/Capstone-Project/blob/main/iPhone%2014%20Pro%20-%201.png" width="360" height="640"/>    <img src="https://github.com/yerlandana/Capstone-Project/blob/main/iPhone%2014%20Pro%20-%202.png" width="360" height="640"/>
<img src="https://github.com/yerlandana/Capstone-Project/blob/main/iPhone%2014%20Pro%20-%203.png" width="360" height="640"/>.   <img src="https://github.com/yerlandana/Capstone-Project/blob/main/iPhone%2014%20Pro%20-%204.png" width="360" height="640"/>
<img src="https://github.com/yerlandana/Capstone-Project/blob/main/iPhone%2014%20Pro%20-%205.png" width="360" height="640"/>


### [BONUS2] Digital Wireframes & Mockups
![](https://i.imgur.com/FcQWrio.png)



### [BONUS] Interactive Prototype

<img src="https://github.com/yerlandana/Capstone-Project/blob/main/RPReplay_Final1681106065.gif" width="360" height="640"/>


## Schema 
[This section will be completed in Unit 9]
### Models
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
