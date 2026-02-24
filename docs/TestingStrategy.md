# Testing Strategy

## Test Pyramid

1. Unit tests (70%)
- ViewModels
- Use case/domain logic
- Service adapters with mocks

2. Integration tests (20%)
- Backend contract checks (staging)
- Auth/session flows
- Data serialization and persistence

3. UI tests (10%)
- Critical user journeys only:
  - onboarding
  - login/logout
  - core task completion

## Quality Gates
- CI required checks:
  - SwiftLint passes
  - Unit/Integration test suite passes
  - Project builds on clean runner

- Release checks (before TestFlight):
  - UI smoke tests pass
  - Archive builds successfully
  - Crash reporting configured

## Practical Rules
- Every bug fix should include at least one new/updated test.
- Every new feature should include:
  - ViewModel tests
  - at least one integration or UI test for critical path
