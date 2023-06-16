# Instagram Clone

Instagram Clone is a social media web application developed in Ruby on Rails. The app uses SQLite database for storage and utilizes HTML, CSS, and Bootstrap for the frontend.

## Gems Used

The following main gems are used in the app:

- **Devise**: Used for secure user authentication.
- **CarrierWave**: Used for managing photo uploads.
- **Ransack**: Used to implement search and filters.
- **turbo-rails**: Used as an alternative to AJAX to reload the page without refreshing.

## Main Components

### Login/Signup

Authenticate users before they can access the core functionality of the app.

### Dashboard

Displays the user's own posts and posts of the users they are following in the feed.

### New Post

Allows users to create a new post by uploading an image and assigning it an optional caption.

### Search

Enables users to search for other users on the platform, visit their profiles, view their posts, post count, followers count, and following count. Users can also follow/unfollow other users.

### My Profile

Displays the user's current post count, followers count, following count, and shows all the posts made by the user in the feed. Users can also edit their profile details, change their password, and update their profile picture.

### Post Operations

Users can perform the following operations on a post:

- **Update Post**: Allows the post owner to change the caption of the post.
- **Delete Post**: Allows the post owner to delete the post.
- **Like Post**: Users can like a post to increment its likes count, displayed under the post.
- **Unlike Post**: Users can unlike a post to decrement its likes count, displayed under the post.
- **Comment**: Users can comment on a post, and the comment will be displayed along with the time passed since it was created.
- **Delete Comment**: A comment can be deleted by the comment owner or the post owner.

### Post Template

Each post template consists of the post owner's name and profile picture displayed at the top, which is clickable and leads to the post owner's profile. The post caption is displayed at the bottom along with the time passed since the post was created.

## Demo Video

https://github.com/MoosaImran50/Instagram/assets/108832275/51919aa5-5653-411b-8b1d-680a9d40edf8

## Screenshots

![Screenshot from 2023-06-13 16-25-24](https://github.com/MoosaImran50/Instagram/assets/108832275/948a1ce4-6ab1-4a77-bcc0-9e8efca33fa0)
![Screenshot from 2023-06-13 17-02-44](https://github.com/MoosaImran50/Instagram/assets/108832275/b75fb1b4-8027-49d8-8e3d-00fdc1a858de)
![Screenshot from 2023-06-13 18-02-41](https://github.com/MoosaImran50/Instagram/assets/108832275/be38d12f-4a35-46b6-87c3-639ea728e169)
![Screenshot from 2023-06-13 16-49-00](https://github.com/MoosaImran50/Instagram/assets/108832275/184e0c60-1b55-4264-a2bf-52a63ca00a0e)
![Screenshot from 2023-06-13 18-05-18](https://github.com/MoosaImran50/Instagram/assets/108832275/e5da865f-3874-4f6f-ae48-f278d9d9e210)
![Screenshot from 2023-06-13 18-02-56](https://github.com/MoosaImran50/Instagram/assets/108832275/79a2ba86-abbc-44b2-b825-6f6932c2e558)


### Versions of Rails and Ruby used in the project

* Rails version: 7.0.4
* Ruby version: 3.0.2p107
