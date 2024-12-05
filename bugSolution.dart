```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);

      // Correct handling of potential null values
      for (var item in data) {
        final String? name = item['name']; // Use String? for nullable type
        print(name ?? 'Name not found'); // Use null-aware operator ??
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
  }
}
```