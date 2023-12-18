import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:praktikum1/Model/SaranModel.dart';
import 'package:praktikum1/View/saran.dart';

void main() {
  testWidgets('Test Saran widget', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: Saran()));

    // Verify that the Saran widget is rendered.
    expect(find.text('Comment App'), findsOneWidget);
  });

  testWidgets('Test CommentForm widget', (WidgetTester tester) async {
    Comment? addedComment;

    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: CommentForm((comment) {
          addedComment = comment;
        }),
      ),
    ));

    // Verify that the CommentForm widget is rendered.
    expect(find.text('Username'), findsOneWidget);
    expect(find.text('Comment'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);

    // Enter text into the username TextField.
    await tester.enterText(find.byType(TextField).at(0), 'Guntur');

    // Enter text into the comment TextField.
    await tester.enterText(find.byType(TextField).at(1), 'Keren');

    // Tap on the ElevatedButton to add a comment.
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // Verify that the comment is added.
    expect(addedComment?.username, 'Guntur');
    expect(addedComment?.text, 'Keren');
  });
}
