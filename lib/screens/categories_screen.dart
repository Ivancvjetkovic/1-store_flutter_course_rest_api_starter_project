import 'all.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 4,
        title: const Text("Categories"),
        leading: AppBarIcons(
          function: () {
            Navigator.pop(context);
          },
          icon: IconlyLight.arrowLeft2,
        ),
      ),
    );
  }
}
