# README

Step by step commits for an talk on Rails for a group of non-Ruby developers. 

Using git to create a 'slide show' to capture the changing state of the app.
Git tags used at the beginning and end of the demo. 
Pull down the repo onto a new machine (or delete the DB and folder completely from existing machine
and re clone, we need to start with a 'blank canvas')

If additional tags are needed add a tag to a specific commit:
**git tag tag-message commit-ref**

To show one line commit history including tags:
**git log --oneline --decorate**

Move the HEAD to the first commit, which is an empty Rails 5.0 app:
**git checkout commit-ref-of-demo-start**

Run:
**git config --global alias.next '!git checkout `` `git rev-list HEAD..demo-end | tail -1` ``'**

You are now at the beginning of your demo and can move through the commits, running
migrations etc as needed from the command line to build the app.
use **git next** to move through the commits

To return to the last commit use
**git checkout master**    (or name of branch if not master!!)

