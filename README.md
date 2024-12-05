# Dart Null Safety JSON Parsing Bug

This repository demonstrates a common error when handling JSON responses in Dart applications with null safety enabled.  The code attempts to access a field in a JSON object without checking for null values, which can lead to runtime exceptions.

The `bug.dart` file contains the buggy code, while `bugSolution.dart` provides a corrected version.

## Problem

The `fetchData` function fetches JSON data from an API.  It iterates through the JSON response and tries to access the `name` field directly. However, the JSON response might not contain this field for every element. If this happens, the code will throw a `Null check operator used on a null value` exception.

## Solution

The corrected code in `bugSolution.dart` checks if `item['name']` is null before attempting to access its value.  This prevents the exception.

## Running the code

1. Clone the repository.
2. Ensure you have Flutter and Dart SDK installed.
3. Run the code using Flutter or Dart.
4. Observe the output and compare the behavior between the buggy and corrected versions.