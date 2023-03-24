import 'package:flutter/material.dart';

class SaleWidget extends StatelessWidget {
  const SaleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Flexible(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Container(
          width: double.infinity,
          height: size.height * 0.2,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xFF7A60A5),
                Color(0xFF82C3DF),
              ],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 0.0),
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: size.height * 0.2,
                  width: 120,
                  decoration: const BoxDecoration(
                    color: Color(0xFF9689CE),
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Get the special discount',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        "50 % \nOFF",
                        style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold, height: 1),
                      ),
                    ],
                  ),
                ),
              ),
              const Flexible(
                child: Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Image(
                    image: NetworkImage('https://m.media-amazon.com/images/I/716jHHW1IPL._UL1500_.jpg'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
