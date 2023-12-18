import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:praktikum1/View/SearchView.dart';

void main() {
  testWidgets('Integration Test for Search Widget', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: SearchView(),
    ));

    // Verify that the SearchView is rendered.
    expect(find.byType(SearchView), findsOneWidget);

    // Verify that the text field is rendered.
    expect(find.byType(TextField), findsOneWidget);

    // Enter a search query in the text field.
    await tester.enterText(find.byType(TextField), 'Suzume');

    // Wait for the debounce duration (you may need to adjust this depending on your actual implementation).
    await tester.pump(const Duration(milliseconds: 300));

    // Verify that the first recommendation item is rendered.
    expect(find.text('SUZUME NO TOJIMARI'), findsOneWidget);
    expect(find.text('Movie'), findsOneWidget);

    // Verify that the second recommendation item is rendered.
    expect(find.text('SPY X FAMILY'), findsOneWidget);

    // Example: Verify that tapping on a recommendation item navigates to the correct screen.
    await tester.tap(find.text('SPY X FAMILY'));
    await tester.pump();
  });
}
