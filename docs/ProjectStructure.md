# Project Structure (Blueprint)

```text
ClientApp/
├── App/
│   ├── ClientAppApp.swift
│   ├── AppDelegate.swift (if needed)
│   ├── Environment/
│   │   ├── AppEnvironment.swift
│   │   ├── BuildConfiguration.swift
│   │   └── DIContainer.swift
│   └── Routing/
│       ├── AppRouter.swift
│       └── NavigationCoordinator.swift
│
├── Models/
│   └── Models.swift                 # centralized model structs
│
├── Services/
│   ├── Protocols/
│   │   ├── AuthServicing.swift
│   │   ├── DatabaseServicing.swift
│   │   └── StorageServicing.swift
│   ├── Backend/
│   │   ├── Firebase/
│   │   │   ├── FirebaseAuthService.swift
│   │   │   └── FirebaseDatabaseService.swift
│   │   └── Supabase/
│   │       ├── SupabaseAuthService.swift
│   │       └── SupabaseDatabaseService.swift
│   ├── API/
│   │   ├── APIClient.swift
│   │   └── Endpoint.swift
│   └── Support/
│       ├── Logger.swift
│       └── KeychainService.swift
│
├── Features/
│   ├── Auth/
│   │   ├── Views/
│   │   ├── ViewModels/
│   │   └── Components/
│   ├── Dashboard/
│   │   ├── Views/
│   │   ├── ViewModels/
│   │   └── Components/
│   └── Shared/
│       ├── Components/
│       ├── Styles/
│       └── Extensions/
│
├── Resources/
│   ├── Assets.xcassets
│   ├── Localizable.strings
│   └── Config/
│       ├── GoogleService-Info.plist (firebase)
│       └── Supabase.plist (supabase)
│
├── Tests/
│   ├── Unit/
│   ├── Integration/
│   └── UITests/
│
├── fastlane/
├── .github/workflows/
├── .swiftlint.yml
└── README.md
```

## Architecture Notes
- OOP-first where useful: protocols + concrete service types.
- Encapsulation: keep side effects inside services.
- Polymorphism: swap Firebase/Supabase implementations via protocol injection.
- Reusability: shared components in `Features/Shared/Components`.
