# Daily Scrum
Web application creating daily scrum boards for use across project sprint.

##Summary:

Daily Scrum solves the problem of having remote teams needing a central board to look at for daily scrums. It allows team members to create note cards for daily scrum meeting over the course of a project sprint. Users answer three questions each day.
* What did I accomplish yesterday?
* What am I working on today?
* What are the roadblocks?

##Trello
Follow my project development on [Trello](https://trello.com/b/h6EFC1Oq)


##Technologies Used
Project built using [Ruby](https://www.ruby-lang.org/en/) on [Rails](http://rubyonrails.org/), [Bootstrap](http://getbootstrap.com/), [Gliffy](https://www.gliffy.com/), and good 'ole pen and paper.

##Install
To pull down to your computer, fork or clone this repo and open on your system. Run 'bundle install' and open in editor of your choice.

##Unsolved Problems
* Note able to delete a board until all notecards for that board have been deleted. Would like to figure out how to do the "delete with no constraints" action available in SQL in Active Record.
* Routes include commented out redirection for any boards/:board_id path to boards/:board_id/notecards. As currently written in the code, this doesn't work with boards/new.


##Coming Features
* Comments on notecards
* Adding columns to user table to capture more information about the user including name and user name.
* Self-referentials tags so that users can tag one another to help resolve roadblocks.
* User page showing boards and notecards only related to that user and displaying relevant tags.
* AWS upload of images so users can upload screenshots of roadblocks if applicable.
* Delete or archive boards with no constraints so that an authorized user can manage old boards.

##Contact information
Create an issue on this repo with any questions.

##Thank you!

> this is a great readme jen, keep it up!
