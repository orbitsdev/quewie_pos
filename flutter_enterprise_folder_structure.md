
# 📂 Enterprise Flutter Project Structure (GCash-scale Example)

```
lib/
│
├── main.dart                  # Entry point
├── app.dart                   # Root widget, dependency injection setup
│
├── core/                      # Shared resources, no feature dependencies
│   ├── config/                # Env, flavors, build configs
│   │   ├── env.dart
│   │   ├── flavors/
│   │   │   ├── dev.dart
│   │   │   ├── staging.dart
│   │   │   ├── prod.dart
│   │   │   └── README.md
│   │   └── README.md
│   ├── constants/             # Strings, keys, endpoints
│   │   ├── app_strings.dart
│   │   ├── app_keys.dart
│   │   ├── api_endpoints.dart
│   │   └── README.md
│   ├── errors/                # Error handling
│   │   ├── app_exception.dart
│   │   ├── failure.dart
│   │   └── README.md
│   ├── network/               # Dio/http setup & interceptors
│   │   ├── dio_client.dart
│   │   ├── auth_interceptor.dart
│   │   └── README.md
│   ├── storage/               # Local storage (Hive, SharedPrefs)
│   │   ├── local_storage.dart
│   │   └── README.md
│   ├── utils/                 # Helpers & extensions
│   │   ├── formatters.dart
│   │   ├── validators.dart
│   │   └── README.md
│   ├── theme/                 # App-wide theming
│   │   ├── app_colors.dart
│   │   ├── app_theme.dart
│   │   └── README.md
│   └── widgets/               # Global reusable widgets
│       ├── custom_button.dart
│       ├── app_loader.dart
│       └── README.md
│
├── features/                  # Feature-first modular design
│   ├── auth/                  # Authentication: login, signup, 2FA
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   │   ├── auth_remote_source.dart
│   │   │   │   ├── auth_local_source.dart
│   │   │   │   └── README.md
│   │   │   ├── repositories/
│   │   │   │   └── auth_repository_impl.dart
│   │   │   ├── models/
│   │   │   │   └── user_dto.dart
│   │   │   └── README.md
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   │   └── user.dart
│   │   │   ├── usecases/
│   │   │   │   ├── login_user.dart
│   │   │   │   ├── logout_user.dart
│   │   │   │   ├── verify_otp.dart
│   │   │   │   └── README.md
│   │   │   └── README.md
│   │   ├── presentation/
│   │   │   ├── controllers/
│   │   │   │   └── auth_controller.dart
│   │   │   ├── views/
│   │   │   │   ├── login_view.dart
│   │   │   │   ├── signup_view.dart
│   │   │   │   ├── otp_view.dart
│   │   │   │   └── README.md
│   │   │   ├── widgets/
│   │   │   │   └── login_form.dart
│   │   │   └── README.md
│   │   └── README.md
│   │
│   ├── payments/              # Send money, QR pay, bills
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   │
│   ├── wallet/                # Balance, cash in/out
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   │
│   ├── transactions/          # History, receipts, disputes
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   │
│   ├── savings/               # Bank links, savings accounts
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   │
│   ├── investments/           # Mutual funds, investments
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   │
│   ├── insurance/             # GInsure products
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   │
│   ├── rewards/               # Points, cashback
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   │
│   └── settings/              # Profile, preferences, security
│       ├── data/
│       ├── domain/
│       └── presentation/
│
├── routes/                    # Centralized routing
│   ├── app_pages.dart
│   └── app_routes.dart
│
├── services/                  # Cross-cutting singletons
│   ├── auth_service.dart
│   ├── analytics_service.dart
│   ├── notification_service.dart
│   ├── firebase_service.dart
│   ├── device_service.dart
│   └── README.md
│
└── l10n/                      # Localization (multi-language)
    ├── app_en.arb
    ├── app_fil.arb
    ├── app_zh.arb
    └── README.md
```
