# Ask AI setup

Ask AI uses an authenticated Firebase callable and the Gemini API. The API key
is read only by Cloud Functions and is not included in the Flutter app.

1. Enable the Generative Language API for the Firebase project's Google Cloud
   project.
2. From the repository root, set the secret in a local terminal:

   ```powershell
   firebase functions:secrets:set GEMINI_API_KEY
   ```

   Enter the key directly at the CLI prompt; do not put it in source control or
   send it through chat.
3. Deploy the callable:

   ```powershell
   firebase deploy --only functions:askTechnologyQuestion
   ```

Cloud Functions deployment requires a billing-enabled Firebase plan. The
callable requires Firebase Authentication, limits each account to 20 questions
per UTC day, and does not store question or answer text. The model is instructed
to reject non-technology questions; like any classifier, that topic boundary is
not a substitute for a security policy.