import 'package:flutter_test/flutter_test.dart';
import 'package:belajarflutter/main.dart';

void main() {
  testWidgets('ProdukPage displays product list test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our product list page loads with title and items.
    expect(find.text('List Data Produk'), findsOneWidget);
    expect(find.text('Kulkas'), findsOneWidget);
    expect(find.text('Playstation'), findsOneWidget);
    expect(find.text('Radio'), findsOneWidget);
  });
}
