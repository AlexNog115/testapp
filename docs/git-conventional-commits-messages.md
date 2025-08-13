# Git Conventional Commits - UserCtl

## 📋 *Conventional Commit Messages Specification*

Use the Conventional Commit Messages specification to generate commit messages for the Kiosko Office project.

### *Commit Message Structure*

<type>[optional scope]: <description>

[optional body]

[optional footer(s)]


### *Commit Types*

#### *Core Types*
- *feat*: A new feature to the codebase (correlates with MINOR in Semantic Versioning)
- *fix*: A bug fix for the application (correlates with PATCH in Semantic Versioning)
- *BREAKING CHANGE*: Introduces a breaking API change (correlates with MAJOR in Semantic Versioning)

#### *Additional Types*
- *build*: Changes that affect the build system or external dependencies
- *chore*: Other changes that don't modify src or test files
- *ci*: Changes to CI configuration files and scripts
- *docs*: Documentation only changes
- *style*: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
- *refactor*: A code change that neither fixes a bug nor adds a feature
- *perf*: A code change that improves performance
- *test*: Adding missing tests or correcting existing tests

### *Scope Examples*
- *feat(auth)*: Authentication related features
- *fix(ui)*: UI/UX related fixes
- *feat(dashboard)*: Dashboard related features
- *fix(api)*: API related fixes
- *feat(orders)*: Order management features
- *fix(products)*: Product management fixes
- *feat(analytics)*: Analytics and reporting features
- *fix(notifications)*: Notification system fixes

### *Commit Message Examples*

#### *Feature Commits*

feat(auth): add login functionality with JWT tokens

- Implement user authentication with email/password
- Add JWT token generation and validation
- Include role-based access control
- Add password recovery functionality

Closes #123



feat(dashboard): implement main dashboard with metrics

- Add sales overview cards
- Implement revenue charts
- Add recent orders table
- Include store performance metrics


#### *Bug Fix Commits*

fix(ui): resolve sidebar collapse issue on mobile

- Fix sidebar not collapsing properly on mobile devices
- Improve touch interactions for mobile users
- Add proper aria-labels for accessibility

Fixes #456



fix(api): handle empty response from orders endpoint

- Add proper null checks for order data
- Implement fallback values for missing fields
- Add error handling for malformed responses


#### *Breaking Changes*

feat(auth)!: refactor authentication to use refresh tokens

BREAKING CHANGE: Authentication now requires refresh token implementation.
Previous JWT-only authentication is no longer supported.

- Replace JWT-only auth with JWT + refresh token system
- Update all authentication endpoints
- Modify client-side auth handling


#### *Documentation Commits*

docs: update README with new installation steps

- Add Docker setup instructions
- Include environment variables documentation
- Update API endpoint references
- Add troubleshooting section


#### *Refactor Commits*

refactor(components): extract reusable form components

- Create FormField component for consistent form styling
- Extract FormButton component with variants
- Implement FormContainer for layout consistency
- Update all forms to use new components


#### *Style Commits*

style: format code with Prettier

- Apply consistent code formatting
- Fix indentation issues
- Standardize quote usage
- Remove trailing whitespace


#### *Test Commits*

test(auth): add comprehensive authentication tests

- Add unit tests for login functionality
- Implement integration tests for auth flow
- Add test coverage for error scenarios
- Mock external dependencies properly


### *Commit Body Guidelines*

#### *When to Include a Body*
- *Always* for breaking changes
- *When* the commit needs additional context
- *When* the commit affects multiple areas
- *When* the commit includes important implementation details

#### *Body Format*
- Use imperative mood ("add" not "added")
- Explain *what* and *why, not **how*
- Reference issues and pull requests
- Include any important implementation notes

### *Footer Guidelines*

#### *Breaking Changes*

BREAKING CHANGE: authentication now requires refresh tokens


#### *Issue References*

Closes #123
Fixes #456
Relates to #789


#### *Co-authored Commits*

Co-authored-by: John Doe <john@example.com>


### *Branch Naming Convention*

#### *Feature Branches*

feat/user-authentication
feat/dashboard-analytics
feat/order-management


#### *Bug Fix Branches*

fix/sidebar-mobile-issue
fix/api-error-handling
fix/typo-in-readme


#### *Hotfix Branches*

hotfix/critical-auth-bug
hotfix/security-vulnerability


### *Pull Request Guidelines*

#### *PR Title Format*

feat(auth): implement user authentication system
fix(ui): resolve mobile responsive issues
docs: update API documentation


#### *PR Description Template*
markdown
## Description
Brief description of the changes

## Type of Change
- [ ] Bug fix (non-breaking change which fixes an issue)
- [ ] New feature (non-breaking change which adds functionality)
- [ ] Breaking change (fix or feature that would cause existing functionality to not work as expected)
- [ ] Documentation update

## Testing
- [ ] Unit tests pass
- [ ] Integration tests pass
- [ ] Manual testing completed
- [ ] Accessibility testing completed

## Checklist
- [ ] Code follows the style guidelines
- [ ] Self-review of code completed
- [ ] Code is commented, particularly in hard-to-understand areas
- [ ] Corresponding changes to documentation made
- [ ] No new warnings generated
- [ ] Added tests that prove fix is effective or feature works

## Screenshots (if applicable)
Add screenshots to help explain your changes.

## Related Issues
Closes #123
Relates to #456


### *Git Workflow*

#### *Main Branches*
- *main*: Production-ready code
- *develop*: Integration branch for features
- *feature/**: Individual feature development
- *hotfix/**: Critical production fixes

#### *Commit Frequency*
- *Small, focused commits*: One logical change per commit
- *Regular commits*: Commit at least once per day
- *Meaningful messages*: Each commit should tell a story

#### *Before Committing*
- [ ] Code is tested and working
- [ ] All tests pass
- [ ] Code follows style guidelines
- [ ] No console.log statements
- [ ] No commented-out code
- [ ] Documentation updated if needed

### *Commit Message Validation*

#### *Required Format*
- Must start with a type
- Must have a description
- Description must be in imperative mood
- No period at the end of description

#### *Recommended Tools*
- *commitlint*: Enforce conventional commits
- *husky*: Git hooks for validation
- *lint-staged*: Run linters on staged files

### *Examples of Good vs Bad Commits*

#### *✅ Good Commits*

feat(auth): add password reset functionality
fix(ui): resolve mobile navigation overlap
docs: update API endpoint documentation
refactor(components): extract reusable button component


#### *❌ Bad Commits*

updated stuff
fixed bug
wip
quick fix
added more features


### *Semantic Versioning*

#### *Version Format*

MAJOR.MINOR.PATCH


#### *Version Bumps*
- *MAJOR*: Breaking changes
- *MINOR*: New features (backward compatible)
- *PATCH*: Bug fixes (backward compatible)

#### *Release Tags*

v1.0.0 - Initial release
v1.1.0 - Added dashboard features
v1.1.1 - Fixed authentication bug
v2.0.0 - Breaking changes in API


---

This document ensures consistent and meaningful commit messages across the Kiosko Office project.
description:
globs:
alwaysApply: false
---