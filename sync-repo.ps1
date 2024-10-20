# This PowerShell 5.1 script uses git to synchronize changes between the local and remote GitHub repository on branch 'main'.
# It assumes that the remote repository is already set up and that the local repository is already cloned.
# If you encounter an execution policy error, you may need to change the execution policy to allow script execution.
# You can do this by running the following command in PowerShell as an administrator:
# Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Steps: 
# - pull changes from remote repository
# - stage all changes
# - commit changes with message 'Update commit'
# - push changes to remote repository on branch 'main'
# - display the status of the repository

# pull changes from remote repository
git pull origin main

# stage all changes
git add .

# commit changes with message 'Update commit'
git commit -m "Update commit"

# push changes to remote repository on branch 'main'
git push origin main

# display the status of the repository
git status
