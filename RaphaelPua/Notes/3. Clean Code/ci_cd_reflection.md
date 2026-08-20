# CI/CD Reflection

## What is the purpose of CI/CD?

- CI/CD helps automate parts of the software development process. Continuous Integration (CI) automatically checks changes when developers push code or create Pull Requests. This helps identify problems before changes are merged into the main codebase. Continuous Delivery or Continuous Deployment (CD) extends this process by automating the process of preparing or deploying software after it has passed the required checks.

## How does automating style checks improve project quality?

- Automating style checks helps overall project quality because it catches formatting and spelling mistakes consistently, forcing the developers to change their code based on the format asked. It helps keep developers and everything consistent. Instead of manually checking every Markdown file, the GitHub Actions workflow automatically checks the files when changes are pushed or a Pull Request is created.


## What are some challenges with enforcing checks in CI/CD?

- One challenge is that automated tools can sometimes identify something as an error even when it is not actually a problem. For example, the spell checker detected words that were not used normally, or names and technical terms that are not actually English words. 

- Another challenge is just setting up the workflows and tools because different tools would need different packages, configuration files, and settings. 

- One final challenge is that it can cause the developer to slow down in development, as many of the checks need to be resolved before I am even able to commit any changes. It can be annoying if is forcing me to make changes when I don't even need to do so. It is important to use the checks to provide good feedback but not completely slowdown the development/developer process.

## How do CI/CD pipelines differ between small projects and large teams?

- The smaller projects can use much simpler CI/CD pipelines because there are fewer people working on the project and thus are more manageable. For example, the projects I have been doing only needs linting, spell checking, and automated tests, such as Husky.

- Large teams usually require more comprehensive CI/CD pipelines because many developers may be working on the project at the same time. They may use additional automated tests, security checks, and deployment stages.

- Overall, the main difference is the level of complexity. A small project can use a easier and less strict pipeline with less tests/checks, while a large team generally needs more automated checks to maintain quality and prevent changes from breaking the shared codebase.