# Social Posts

This directory contains LinkedIn social posts for the OpenAPI Initiative.

---

## How to Contribute a Post

1. **Open an issue** using the [Social Post issue template](https://github.com/OAI/Outreach/issues/new?template=social-post.yml).
   Fill in as much detail as you have — a rough draft is fine at this stage.

2. **Create a branch** from `main`:
   ```
   git checkout -b social/YYYY-MM-DD-your-slug
   ```

3. **Copy the template** and create your post file:
   ```
   cp src/social/_template.md src/social/YYYY-MM-DD-your-slug.md
   ```

4. **Edit the file** — fill in the frontmatter and write the post body.

5. **Open a Pull Request** using the Social Post PR template.
   **You must include `Closes #N`** (where `N` is your issue number) in the PR
   description — the automation that moves your issue to the project board
   requires it.

---

## File Format

Files are named `YYYY-MM-DD-[slug].md` and use the following frontmatter:

```yaml
---
publication-date: 2026-04-01T09:00:00-07:00   # RFC 3339, timezone required
platform: linkedin
tagged-users:
  - name: Display Name
    url: https://www.linkedin.com/in/profile-slug/
---

Post body goes here. LinkedIn-style plain text.

#OpenAPI #APIFirst
```

### Field reference

| Field | Required | Notes |
|---|---|---|
| `publication-date` | Yes | RFC 3339 format with timezone offset. Do not use a bare date. |
| `platform` | Yes | Controlled vocabulary. Currently only `linkedin` is supported. |
| `tagged-users` | No | List of `{name, url}` objects. Both fields are required per entry. |

---

## Automation

When you open or update a Pull Request that touches `src/social/**`, the
`social-post-review` GitHub Actions workflow runs automatically. It:

1. Reads the `Closes #N` line from the PR body to find the linked issue.
2. Adds the issue to [OAI Project #14](https://github.com/orgs/OAI/projects/14).
3. Sets the issue's **Status** to **In Review**.

Adding a new commit to an open PR re-runs the workflow. The
`addProjectV2ItemById` mutation is idempotent — no duplicate cards are created.

### Required secrets and variables

These must be configured in the repository (or org) settings before the
workflow can run:

| Name | Type | Notes |
|---|---|---|
| `OAI_PROJECT_URL` | Variable | Full URL of the GitHub project, e.g. `https://github.com/orgs/OAI/projects/14` |
| `PROJECT_GITHUB_TOKEN` | Secret | Classic PAT with `project` and `repo` scopes. The default `GITHUB_TOKEN` cannot write to org-level Projects v2. |
