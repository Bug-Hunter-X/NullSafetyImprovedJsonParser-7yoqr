```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON list
      final List<dynamic> data = jsonDecode(response.body);

      // Incorrect handling of potential null values
      // Example: Accessing a field that might not exist in each element
      for (var item in data) {
        final String name = item['name']; // ERROR PRONE:  item['name'] might be null
        print(name);
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
  }
}
```