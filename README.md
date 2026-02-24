# iOS Starter Blueprint (SwiftUI + Firebase/Supabase)

Production-first template for building client-ready iOS apps with:
- SwiftUI + Xcode
- Firebase **or** Supabase backend
- TestFlight release flow
- SwiftLint enforcement
- OOP-first structure where practical
- Reusable view/component architecture

---

## What this blueprint is

This folder is a **project operating template**. It gives you:
1. Recommended app folder structure
2. Linting rules (`.swiftlint.yml`)
3. CI workflow scaffold (GitHub Actions)
4. Fastlane release scaffold (TestFlight)
5. Testing strategy and quality gates

It is intentionally opinionated based on your workflow:
- robust, shippable code
- reusable SwiftUI components
- separated services
- centralized models
- no forced git commit/push/merge automation

---

## How to use this blueprint

### 1) Create your app project
- In Xcode, create a new iOS App project.
- Name it (e.g., `ClientApp`).
- Keep your Xcode project at repo root.

### 2) Copy structure guidance
- Follow `docs/ProjectStructure.md`.
- Create folders/groups in Xcode to match the structure.

### 3) Enable linting
- Copy `.swiftlint.yml` to repo root.
- Install SwiftLint (Homebrew or Mint).
- Add a Run Script build phase if needed.

### 4) Set CI
- Copy `.github/workflows/ios-ci.yml` into your repo.
- Update scheme/project names and iOS simulator target.
- Add any required repo secrets.

### 5) Set release automation
- Copy `fastlane/` folder.
- Configure bundle id + Apple team + app id.
- Run Fastlane lanes for beta/TestFlight release.

### 6) Pick backend mode
- Firebase route: use `Services/Backend/Firebase/`
- Supabase route: use `Services/Backend/Supabase/`
- Keep one active adapter behind protocol abstractions.

---

## Git policy (important)

This blueprint does **not** auto-commit, auto-push, auto-branch, or auto-merge.
- Commit only when requested.
- Push only when requested.
- Branch/merge only when requested.

Recommended checkpoints are documented in `docs/Workflow.md`.

---

## Suggested first implementation order

1. Core models + protocols
2. Backend service adapters (Firebase/Supabase)
3. ViewModels + DI container
4. Reusable UI components
5. Feature screens
6. Tests
7. CI + TestFlight lane

---

## Notes

- Keep views near 200 lines max where practical.
- Prefer composition over deep inheritance in SwiftUI UI layer.
- Use inheritance selectively in service/domain layers where it truly improves design.


## Wired in this blueprint now

- DI container: `App/Environment/DIContainer.swift`
- Runtime backend switching: `BuildConfiguration` + `BACKEND_PROVIDER`
- Firebase adapter stubs: Auth/Database/Storage
- Supabase adapter stubs: Auth/Database/Storage
- Sample feature module with View + ViewModel using DI
- App entry point scaffold: `App/ClientAppApp.swift`

See `docs/BackendSetup.md` for provider selection.
