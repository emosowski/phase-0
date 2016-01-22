# How does tracking and adding changes make developers' lives easier?

Tracking and adding changes makes developers' lives easier because it allows them to save changes as they work, and then return to each of those saved steps. If something goes wrong, the developer can return to a previous commit and start from there. Additionally, if they need to reference where a certain change was made, they can review the commit log. These options that tracking and adding provide are particularly helpful when working with a team on the same project. Tracking and adding allows each member of the team to simultaneously work on a project, while also remaining organized and avoiding stepping on each others' toes.

# What is a commit?

A commit is a save point. It allows you to create a place after you have made changes that you can return to or review. It is like the boss level in the video game, if you die, you can simply return to that same level and try again. Commits also have commit messages that explain what changes are contained in each commit.

# What are the best practices for commit messages?

Best practices for commit messages include:
1. First line is capitalized, short summary. 50 characters or less.
2. body is a paragraph going into a detailed explanation. 72 characters or less.
3. Further paragraphs come after a blank line.
4. Write in the imperative.

# What does the HEAD^ argument mean?

Head^ is the last commit you made. Head is the commit you are currently on.

# What are the 3 stages of a git change and how do you move a file from one stage to the other?

1.modify
2.stage
3.commit
 Once you modify a file, save it and then return to terminal and enter git status. This will bring up any changes. To add the change to the stage enter git add <file_name> or you can use git add . to stage all of the changed files at once. Now that the change is staged, it is ready to be commited. Enter git commit -v and this will open up your text editor so that you may enter your commit message. Save the commit message and exit it.

# Write a handy cheatsheet of the commands you need to commit your changes?
git status
git add <file_name>
git add .
git commit -v
git commit -m "commit message"

# What is a pull request and how do you create and merge one?

A pull request is a way to merge code from a feature branch into a master branch. First, you need to push the feature branch to github using: git push origin branch-name. On your github repository click the green "Compare and pull request" button. Once this page opens, make sure the base branch is "master" and the comparison branch is your new branch. Add a title and description in the box and then click the "create pull request" button. To merge the change, press the "merge" button on the Conversation tab of your pull request. Click "Confirm merge", and, once it is done, you can delete the feature branch.

# Why are pull requests preferred when working with teams?

Pull requests are preferred because they allow others to review the commits you are submitting before they are merged with the master branch. This serves as a safety precaution, and also assists collaboration.