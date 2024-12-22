```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Here's where the potential error lies
      final jsonData = jsonDecode(response.body); //This line can throw a FormatException
      // ... process jsonData ...
    } else {
      // Handle non-200 status codes
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle exceptions (including FormatException from jsonDecode)
    print('Error: $e');
    rethrow; // Re-throw the exception to be handled higher up
  }
}
```