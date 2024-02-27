import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<String> items = [
    'kanishka',
    'Dilshan',
    'No one',
    'Ahya',
    'Kimiko',
    'Cerci',
    'Jagan',
    'Dilshan',
    'No one',
    'Ahya',
    'Aiharo',
    'xi',
  ];

  final List<String> countOfFriends = [
    '0',
    '19',
    '12',
    '64',
    '32',
    '65',
    '99',
    '19',
    '12',
    '64',
    '63',
    '101',
  ];

  final List<String> images = List.generate(
    12,
        (index) => 'assets/dog.jpeg',
  );

  List<Map<String, dynamic>> arrayOfMaps = [
    {'name': 'kanishka', 'count': '0'},
    {'name': 'Dilshan', 'count': '19'},
    {'name': 'No one', 'count': '12'},
    {'name': 'Ahya', 'count': '64'},
    {'name': 'Kimiko', 'count': '32'},
    {'name': 'Cerci', 'count': '65'},
    {'name': 'Jagan', 'count': '99'},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal.shade600,
        body: Column(
          children: [
            Container(
              color: Colors.white,
              height: 50,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Buttons(
                      backColor: Colors.blue,
                      textColor: Colors.white,
                      label: 'connections',
                    ),
                    SizedBox(width: 10),

                    Buttons(
                      backColor: Colors.grey,
                      textColor: Colors.black,
                      label: 'Groups',
                    ),
                    SizedBox(width: 10),

                    Buttons(
                      backColor: Colors.grey,
                      textColor: Colors.black,
                      label: 'housing',
                    ),
                    SizedBox(width: 10),

                    Buttons(
                      backColor: Colors.grey,
                      textColor: Colors.black,
                      label: 'friends',
                    ),
                    SizedBox(width: 10),

                    Buttons(
                      backColor: Colors.grey,
                      textColor: Colors.black,
                      label: 'whatever',
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ),


            SizedBox(height: 25),
            TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: ListTile(
                        leading: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(images[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(items[index]),
                            Text('Mutual Friends: ${countOfFriends[index]}'),
                            ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.message),
                                  Text('Connect'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  final Color backColor;
  final Color textColor;
  final String label;

  const Buttons({
    Key? key,
    required this.backColor,
    required this.textColor,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(backColor),
      ),
      child: Text(
        label,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
