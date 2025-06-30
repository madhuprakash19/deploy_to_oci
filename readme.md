## FastAPI Server - Deployment [Oracle Cloud - VM]
This repository contains all the necessary information to get started with CI/CD using GitHub Actions.

The `.github/workflows` directory contains the YAML file that helps deploy the FastAPI server automatically after a push or pull.
### How does it work behind the scenes?
GitHub Secrets contains the VM host details, username, and SSH keys. It establishes an SSH connection to the public VM, pulls the latest code into the VM, and restarts the FastAPI server.

This setup also includes a rollback mechanism. If the deployment fails (for example, if the /test API does not return a `200 OK` response), it rolls back to the previous state.