### Understanding how "checkout" works

With the "git checkout" command, you determine which revision of your project you want to work on. Git then places all of that revision's files in your working copy folder.

*Normally, you use a branch name to communicate with "git checkout":*

`$ git checkout development`

However, you can also provide the SHA1 hash of a specific commit instead:

`$ git checkout 56a4e5c08`

*You are in 'detached HEAD' state...*

This exact state - *when a specific commit is checked out instead of a branch* - is what's called a "detached HEAD".

### The problem with a detached HEAD

*The HEAD pointer in Git determines your current working revision* (and thereby the files that are placed in your project's working directory). *Normally*, when checking out a proper branch name, Git automatically moves the HEAD pointer along when you create a new commit. You are automatically on the newest commit of the chosen branch.

When you instead choose to check out a commit hash, Git won't do this for you. *The consequence is that when you make changes and commit them, these changes do NOT belong to any branch.*

*This means they can easily get lost once you check out a different revision or branch*: not being recorded in the context of a branch, you lack the possibility to access that state easily (unless you have a brilliant memory and can remember the commit hash of that new commit...).

* check if HEAD is detached

`git symbolic-ref -q HEAD`

* Where a detached HEAD should not show up

- Going back in time to try out an older version of your project? For example in the context of a bug, you want to see how things worked in an older revision.

- Remember *how simple and cheap* the whole concept of branching is in Git: *you can simply create a (temporary) branch and delete it once you're done.*

```sh
git checkout -b test-branch 56a4e5c08  # create branch from 56a4e5c08 commit

# After using test-branch
git checkout master  #
git branch -d test-branch
```
