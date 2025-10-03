import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_3_easypaisa_clone/main.dart';

void main() {
  testWidgets('MyApp initializes with GetMaterialApp', (tester) async {
    SharedPreferences.setMockInitialValues({});

    await tester.pumpWidget(const MyApp());
    await tester.pump();

    expect(find.byType(GetMaterialApp), findsOneWidget);
  });
}
