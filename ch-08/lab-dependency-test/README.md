# Dependency Scanning Demo Project

## What is this?

A composite project for testing of GitLab [Dependency Scanning](https://docs.gitlab.com/ee/user/application_security/dependency_scanning/) functionality.

This project has a minimal amount of code for several [supported languages and package managers](https://docs.gitlab.com/ee/user/application_security/dependency_scanning/#supported-languages-and-package-managers) to trigger a variety of Dependency Scanners and output detected "vulnerabilities".

This project can be used to demo DS functionality and expected results, or it can act as the sand in a sandbox for testing DS with CI job modifications.

## Usage

1. Import this project to your SaaS namespace or self-managed instance.
1. Trigger a pipeline.
1. :tada:

## Troubleshooting Tips

- If SAST job is failing and it's unclear why, **enable [debug logging](https://docs.gitlab.com/ee/user/application_security/sast/index.html#sast-debug-logging)**

    ```yaml
    variables:
      SECURE_LOG_LEVEL: "debug"
    ```
    
- If customizations were made to SAST jobs, run a pipeline using bare-minimum SAST defaults to verify that customizations are not causing or contributing to the problem.

    ```yaml
    include:
      - template: Security/Dependency-Scanning.gitlab-ci.yml
    ```

## Contributing

This project is licensed under MIT license and is accepting contributions.

If you have a proposed improvement, create an issue. Or better yet - make the improvement yourself and submit a merge request!
