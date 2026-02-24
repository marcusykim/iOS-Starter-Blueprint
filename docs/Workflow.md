# Suggested Workflow

## Daily flow
1. Define feature scope + acceptance criteria
2. Implement models/services/viewmodels/views in that order
3. Run lint + tests locally
4. Ask for commit at natural checkpoint
5. Continue iteratively

## Commit checkpoint suggestions
Ask to commit when:
- A feature vertical slice is complete and tested
- A refactor is stable before starting another
- Before risky migrations or architecture changes
- Before release prep

## Push checkpoint suggestions
Ask to push when:
- PR-ready state achieved
- CI should validate latest integrated changes
- Team/client visibility is needed

## Branch/Merge suggestions
Only suggest (do not execute) when:
- Work diverges into risky or long-running feature
- Hotfix required separate from active work
- Release stabilization requires isolated changes
