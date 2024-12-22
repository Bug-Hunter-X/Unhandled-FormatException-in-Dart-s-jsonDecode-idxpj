```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // ... process jsonData ...
      } on FormatException catch (e) {
        print('Invalid JSON format: $e');
        // Handle the invalid JSON appropriately, e.g., display an error message or retry
      } 
    } else {
      // Handle non-200 status codes
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    rethrow; // Re-throw the exception to be handled higher up
  }
}
```