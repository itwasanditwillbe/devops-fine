#!/bin/bash

# Configuration variables
GIT_REPO_DIR="/home/ubuntu/gitrepo"
GITHUB_REPO_URL="git@github.com:theuppercaseguy/dev_mid.git"
CRON_SCHEDULE="*/2 * * * *" #every 2 minutes

# Function to display error messages
function error {
  echo "Error: $1"
  exit 1
}

# Check if the repository directory exists
if [ -d "$GIT_REPO_DIR" ]; then
  error "Repository directory already exists."
else
  # Create the repository directory
  sudo mkdir -p "$GIT_REPO_DIR" || error "Could not create repository directory."
fi

# Change to the repository directory
sudo cd "$GIT_REPO_DIR" || error "Could not change to the repository directory."

# Initialize a new Git repository
sudo git init || error "Failed to initialize Git repository."

# Configure Git user information
sudo git config --global user.name "theuppercaseguy" || error "Failed to set Git user name."
sudo git config --global user.email "saadan06@gmail.com" || error "Failed to set Git user name."

# Set remote origin
sudo git remote add origin "$GITHUB_REPO_URL" || error "Failed to set Git remote origin."

# Create a simple script to commit and push
cat > git_autocommit.sh <<EOF
echo '#!/bin/bash' > git_autocommit.sh
echo 'cd "$GIT_REPO_DIR"' >> git_autocommit.sh
echo 'timestamp=$(date +%Y%m%d%H%M%S)' >> git_autocommit.sh
echo 'echo "Commit Timestamp: $timestamp" > timestamp.txt' >> git_autocommit.sh
echo 'git add .' >> git_autocommit.sh
echo 'git commit -m "Auto commit: $timestamp"' >> git_autocommit.sh
echo 'git push origin master' >> git_autocommit.sh
EOF
chmod +x git_autocommit.sh || error "Failed to set execute permissions for git_autocommit.sh."

# Add a cron job to automate commits and pushes
(crontab -l 2>/dev/null; echo "$CRON_SCHEDULE $GIT_REPO_DIR/git_autocommit.sh") | crontab -

# Initialize the repository with an initial commit
git add .
git commit -m "Initial commit"
git push -u origin master

echo "Git repository setup and automation complete."
