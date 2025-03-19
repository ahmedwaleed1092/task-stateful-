import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i = 1; // Default value for counter

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 22,
                child: CircleAvatar(
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    iconSize: 25,
                    onPressed: () {},
                  ),
                ),
              ),
              Spacer(flex: 1),
              Text(" Details", style: TextStyle(fontSize: 28)),
              Spacer(flex: 1),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite, color: Colors.red),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              child: Image.asset('images/R-rw.png'),
              width: 350,
              height: 220,
            ),
            Row(
              children: [
                Text(
                  'Chair',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 121, 119, 119),
                    fontSize: 28,
                  ),
                ),
                Spacer(flex: 1),
                Text('\$212', style: TextStyle(fontSize: 33)),
              ],
            ),
            Column(
              children: [
                Text(
                  'Minimalist Style With Pillow',
                  style: TextStyle(fontSize: 29),
                ),
                Text(
                  'Loren ispun dolor sit anet, consectur adipisci wlit, sed elushod tenpor incidunt ut labore et quis , nistrun exericiatationen ullan coeporis susipit laborison , nisi aliquid ex ea connodi consequature',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Row(
              children: [
                Spacer(flex: 1),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
                Spacer(flex: 1),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
                Spacer(flex: 1),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
                Spacer(flex: 1),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    shape: BoxShape.circle,
                  ),
                ),
                Spacer(flex: 1),
                Container(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            i++;
                          });

                          print(i);
                        },
                        icon: Icon(Icons.add),
                      ),
                      Text('$i'),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            i--;
                          });

                          print(i);
                        },
                        icon: Icon(Icons.remove),
                      ),
                    ],
                  ),

                  height: 40,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(153, 179, 170, 170),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    margin: EdgeInsets.all(4),
                    width: 50,
                    height: 50,

                    child: IconButton(
                      iconSize: 35,
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border, color: Colors.red),
                    ),
                  ),
                  Spacer(flex: 1),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 15,
                      ),
                      minimumSize: Size(20, 10),
                    ),
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
