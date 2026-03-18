# Backend Setup

## Choose backend provider

Set environment variable for local runs:

- Firebase (default): `BACKEND_PROVIDER=firebase`
- Supabase: `BACKEND_PROVIDER=supabase`

In Xcode Scheme:
1. Edit Scheme → Run → Arguments
2. Add Environment Variable `BACKEND_PROVIDER`
3. Set value to `firebase` or `supabase`

## Next steps
- Replace stub service implementations with real SDK calls.
- Keep services behind protocols so feature code stays backend-agnostic.
