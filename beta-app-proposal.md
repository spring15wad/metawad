# Proposal for project 2 &lsquo;beta-app&rsquo;

### Team

* GitHub organization: [spring15wad](https://github.com/spring15wad)
  * Dan Martin ([thedanmartin](https://github.com/thedanmartin))
  * Josh Hignight ([jhignight](https://github.com/jhignight))
  * Mike Freeman ([mfreema5](https://github.com/mfreema5))

## &ldquo;RollingRead&rdquo;

### Purpose

RollingRead is a rolling reading list, something of a cross between a task list and a calendar.  The app presents a university student with the reading assignments for the student's classes, organized and sorted by due date.

### Scope

* RollingRead only uses data (textbooks names, course meeting times, etc.) entered by the user
* Users can enter URLs to have assignments link to external resources

### Improvements and additions to alpha-app

#### User interface

1. Develop an example user persona
1. Create usage scenarios
  * Planning daily ToDo list, which includes reading assignments
  * Initial assignment creation
1. Create hierarchical task models based on scenarios
1. Storyboard user's interaction with app
  * User is completing modeled tasks
1. Diagram the model-view-controller behind the app pages in the storyboard
1. Implement model-view-controller functions in app
  * Can only break this down into sub-tasks after completing earlier tasks.

#### Look & Feel

We plan to make several changes to the appearance of the app for the beta version.

* Revised layout.
* Revised color pallete.
* Introduction of font stack utilizing web fonts. (See also our coming proposal for project 4.)

----

Initial feedback on proposal:

  &ldquo;I don't really see any new information here, or anything about how you're going to proceed, what you're going to build, etc. Also no commits to the memo from Dan... This is an OK start for a description, but I'd like to see a bit more who-what-when.&rdquo;

Feedback on RollingRead as alpha-app:

  &ldquo;Runnning `rake routes` on your project shows me that there’s probably room to do some nested URLs and record creation; instead of the dropdown fever on, say, assignments, you might think about making Courses the nuclear record creating area. It’s obviously useful to have a listing of all Assignments, but whether their creation should happen outside of working with, say, a Course model is something worth considering. 
  
  &ldquo;Probably worth your while to do some more sketching and storytelling to think about ways to more elegantly move users through this app, but also for them to get a better idea of the whole thing’s scope.&rdquo;

