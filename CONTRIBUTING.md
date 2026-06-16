# 🤝 Contributing to Universal Dev Template

Thank you for contributing! To keep this template high-quality, please follow these guidelines.

##  Commit Message Format (Conventional Commits)

We use [Conventional Commits](https://www.conventionalcommits.org/) to maintain a clean history and enable automated changelogs.

**Format:** `<type>(<scope>): <description>`

**Examples:**
- `feat: add Python validation script`
- `fix: resolve merge conflict in status updater`
- `docs: update architecture diagram colors`
- `ci: increase timeout for health checks`
- `refactor: simplify validate.sh logic`

**Types:**
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation only changes
- `style`: Changes that do not affect the meaning of the code (white-space, formatting)
- `refactor`: A code change that neither fixes a bug nor adds a feature
- `perf`: A code change that improves performance
- `test`: Adding missing tests or correcting existing tests
- `chore`: Changes to the build process or auxiliary tools

## 🔄 Pull Request Process

1.  Create a branch from `main` (e.g., `feat/my-new-feature`).
2.  Make your changes and commit using the format above.
3.  Run `./scripts/validate.sh` locally before pushing.
4.  Push your branch and open a Pull Request against `main`.
5.  Wait for CI checks to pass (green badge).
6.  Request review from maintainers.

## 🛡️ Branch Protection

Direct pushes to `main` are disabled. All changes must go through a PR and pass CI validation.
