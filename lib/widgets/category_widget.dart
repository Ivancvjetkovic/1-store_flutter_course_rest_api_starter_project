import 'all.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      child: ClipRRect(
        child: Stack(children: [
          SizedBox(
            child: Image.network(
              'https://m.media-amazon.com/images/I/716jHHW1IPL._UL1500_.jpg',
              height: size.height * 0.2,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: size.height * 0.05,
              width: size.width * 0.3,
              color: Colors.black.withOpacity(0.5),
              child: const Center(
                child: Text(
                  'Category',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
