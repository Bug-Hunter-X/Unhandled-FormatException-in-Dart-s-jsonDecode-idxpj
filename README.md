# Unhandled FormatException in jsonDecode

This repository demonstrates a common error in Dart when using `jsonDecode` to parse JSON data.  The code fails to handle the `FormatException` that can be thrown if the input JSON is malformed or invalid.

The `bug.dart` file shows the flawed code. The `bugSolution.dart` file shows the corrected version with proper exception handling.

## How to reproduce:

1. Clone this repository.
2. Run `bug.dart`. Observe that a `FormatException` is thrown if the API returns invalid JSON.
3. Run `bugSolution.dart`.  This version handles the exception gracefully.

## Solution:

The solution is to wrap the `jsonDecode` call in a `try-catch` block to catch the `FormatException` and handle it appropriately. This prevents the app from crashing and allows for better error reporting and recovery.