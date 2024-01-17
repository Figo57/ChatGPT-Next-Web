# Manual Sync Guide

## Introduction

Performing a manual sync and resolving merge conflicts is an essential process when encountering failures in the automatic update of your forked repository. This guide will walk you through the necessary steps to successfully sync your fork and resolve any conflicts that may arise.

## Step 1: Deleting the Original Forked Repository

Before proceeding with the manual sync, it is important to delete the original forked repository to ensure a clean start. Follow these steps to delete the repository:

1. Navigate to the original forked repository on GitHub.
2. Go to the repository's settings.
3. Scroll down to the "Danger Zone" section.
4. Click on the "Delete this repository" button.
5. Confirm the deletion by following the on-screen prompts.

> Note: Deleting a repository is irreversible. Make sure you have a backup or have transferred any important data before proceeding.

## Step 2: Forking the Upstream Repository Again

To continue with the manual sync, you need to fork the upstream repository again. Follow these steps to fork the repository:

1. Go to the upstream repository on GitHub (Yidadaa/ChatGPT-Next-Web).
2. Click on the "Fork" button in the top-right corner of the repository page.
3. Select your GitHub account or organization to fork the repository into.

## Step 3: Redeploying the Project Using Vercel

After forking the repository, you need to redeploy the project using Vercel. Follow these steps to redeploy the project:

1. Register for a GitHub account if you don't have one.
2. Fork the ChatGPT-Next-Web repository to your GitHub account.
3. Register for a Vercel account and connect it to your GitHub account.
4. Create a new project on Vercel and select the forked repository.
5. Fill in the required environment variables as needed.
6. Start the deployment process. Once deployed, you can access your project using the provided Vercel domain.

> Note: If you need to access your project in China without a VPN, you will need to add a CNAME record in your domain management system and configure it in Vercel.

## Step 4: Enabling Workflows and Upstream Sync Action

To enable automatic updates, you need to enable workflows and the Upstream Sync Action in the forked repository's Actions page. Follow these steps:

1. Go to the forked repository on GitHub.
2. Click on the "Actions" tab.
3. Enable workflows by following the provided instructions.
4. Enable the Upstream Sync Action by following the provided instructions.

> Note: Enabling workflows and the Upstream Sync Action allows for scheduled automatic updates every hour.

## Step 5: Resolving Merge Conflicts

During the sync process, merge conflicts may occur in certain files. Follow these steps to resolve merge conflicts in the files "package.json", "src-tauri/Cargo.lock", and "yarn.lock":

1. Open the conflicting file in a text editor or code editor.
2. Locate the conflicting sections marked with conflict markers (`<<<<<<<`, `=======`, and `>>>>>>>`).
3. Manually edit the conflicting sections to resolve the conflicts.
4. Save the file after resolving the conflicts.
5. Repeat the above steps for each conflicting file.

> Note: If you are unsure how to resolve the conflicts, consult the Git documentation or seek assistance from experienced developers.

## Conclusion

By following the steps outlined in this guide, you should be able to successfully perform a manual sync and resolve merge conflicts in your forked repository. Remember to regularly sync your fork to stay up to date with the upstream repository and ensure a smooth development process.

If you encounter any issues or need further assistance, don't hesitate to reach out to the community for support.

Happy syncing!
