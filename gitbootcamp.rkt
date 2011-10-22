you have a git client set up, now test git basics.
you’ve just set up a git client and configured it to work with visiontree using ssh keys and ssh configuration magic.
now we’ll go over git basics by example.  hopefully this will also serve as a reference.
if you already know what happens when you do a git pull --rebase and why you’d want to do it, please correct me if i make mistakes.
once you know what you’re doing with git, it will take you 5 minutes at the most to do what we’re about to do.
1.	if you haven’t already, clone the git-foo-project repo from github:
a.	$ git clone git@github.com:erhs-53-hackers/git-foo-project.git
2.	go into the git repo you just cloned (you cloned it with the command git clone vt-depot:foo)
a.	$ cd foo
3.	open up a graphical visualizer of the repo so you can see what’s going on
a.	$ gitk --all&
b.	hit f5 in the window that pops up whenever you want to see the current state of the repo.
4.	check the status of the changes in the repo
a.	$ git status
5.	see what branch you’re on
a.	$ git branch
6.	create your own branch.  change the yellow part to your own username
a.	$ git branch user
i.	create a branch named user.  that branch points to whatever is currently checked out.
b.	$ git checkout user
i.	switch to that branch.  any commits made now will be tracked by the branch user.
c.	you can do those as one step, but it is useful to know both steps.  as one step:
i.	$ git checkout -b user
d.	refresh gitk.  the branch is indicated by the green box with “user” in it, next to the one with “master” in it.
7.	make a change to the file “modify-me”
a.	replace line 4 with your name.
8.	add the change to “modify-me” into what will be the next git commit, this is the “index”
a.	$ git add modify-me
b.	hit f5 in gitk, you’ll want to see this for sure.  you’ll see your changes “checked into index but not committed”
9.	now make a snapshot of your work, aka a commit
a.	$ git commit -m “test out making changes as user”
b.	hit f5 in gitk.  note that your branch has a commit in it that master branch doesn’t have.
c.	also note that there is a branch named remotes/origin/ozzloy.  this is your knowledge of a branch named “ozzloy” on some other computer named “origin”.  the name “origin” is set up automatically when you clone.  it refers to the computer you cloned from.  in this case it refers to git@github.com:erhs-53-hackers/git-foo-project.git.
10.	next we’ll checkout the master branch again.
a.	refresh gitk.  notice “user” is bold.  that means it’s checked out right now.
b.	$ git checkout master
c.	refresh gitk.  notice master is bold.
d.	refresh or reopen the file modify-me.  see that your change is no longer there.
11.	go back to your own branch
a.	do the same stuff as in the prior step
i.	but swap user and master
ii.	also your changes to modify-me should be back.
12.	now for remote stuff.  make a local branch in your git repo to track the changes made to the branch ozzloy on the remote origin.  the name origin is your git repo’s name for git@github.com:erhs-53-hackers/git-foo-project.git.
a.	in gitk, note the box remotes/origin/ozzloy.  that’s your local knowledge of the branch “ozzloy” on the remote named “origin”
b.	$ git checkout -t origin/ozzloy
i.	this is shorthand.  more details here http://gitready.com/intermediate/2009/01/09/checkout-remote-tracked-branch.html
c.	refresh gitk.  note there is now a “ozzloy” pointing at the same place as “remotes/origin/ozzloy”.
13.	now i’ll make a change to that branch and push it to git@github.com:erhs-53-hackers/git-foo-project.git.  you’ll do this in a second, but first you’ll get the changes i just made onto your own computer.
14.	to get those changes, do a fetch, which will update all the remotes/origin/branchnames, like remotes/origin/ozzloy but it will leave local branches like master or ozzloy alone.
a.	refresh gitk, notice you don’t see the changes i made and put on git@github.com:erhs-53-hackers/git-foo-project.git just yet.
b.	$ git fetch
c.	f5 in gitk to see the change.
i.	note remotes/origin/ozzloy now has a commit in it that ozzloy does not have
15.	get the commit into your local branch of ozzloy
a.	$ git merge
i.	notice you didn’t have to specify where you pulling changes from or where to put those changes.  this is because your local branch was set up as tracking.  that just means git will remember this information for you.
ii.	if you didn’t set it up as tracking, you could do it with git merge origin/dwatson.  more generically:
1.	$ git merge merge-these-branches
a.	merge a list of branches into the current branch.
b.	f5 in gitk to see the change
i.	now ozzloy and remotes/origin/ozzloy point at the same commit
16.	git pull does the same thing as git fetch followed by git merge.
17.	push your changes from your branch to git@github.com:erhs-53-hackers/git-foo-project.git and keep track of the changes, fill in “user” with your username:
a.	$ git push -u origin user
b.	in gitk, note that there is now a remotes/origin/user pointing at the same place as your local user branch. this is your local clone’s knowledge of what’s in the remote branch.
18.	seeing everyone else’s changes.
a.	$ git fetch
b.	this looks messy.  there are lots of independent changes going on in lots of different branches.  it’s possible to merge them all together, but it’s easier if everyone puts their changes in one line of commits instead.
19.	put your changes into the master branch
a.	$ git checkout master
i.	make master the current branch.
b.	$ git merge user
i.	update the current branch, master, to include the changes from user branch.
c.	note that master and user point at the same place now.
20.	i will now make a change to master and push it to git@github.com:erhs-53-hackers/git-foo-project.git on line 4.
21.	put your changes back on git@github.com:erhs-53-hackers/git-foo-project.git in the master branch where everyone else can see them.
a.	$ git push
i.	if you don’t specify where you’re pushing, git will push to wherever the current branch is tracking.  since you cloned, your master branch is set to track the master branch on git@github.com:erhs-53-hackers/git-foo-project.git. and git@github.com:erhs-53-hackers/git-foo-project.git is named origin.
b.	this should fail for everyone.
22.	let’s fix it.  one person at a time.
a.	$ git pull
i.	ohno, that didn’t work either
b.	$ git pull --rebase
i.	oh no.  a conflict
c.	reopen or refresh modify-me.  combine the other person’s commit and your own.
d.	$ git add modify-me
i.	tell git to add modify-me to the index
e.	$ git rebase --continue
i.	tell git that what’s in the index is the complete resolution to the conflict
f.	$ git push
i.	put that change back to origin, aka vt-depot, so other people can pull it.

git troubleshooting
this rosy picture of working with git was orchestrated.  sometimes things go wrong like “ambiguous reference” or something being locked up in some weird state.  this section is empty at first.  as problems arise, let’s document them and their solutions here.
