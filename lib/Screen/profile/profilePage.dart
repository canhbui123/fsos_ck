import 'package:flutter/material.dart';

import '../buttonBar.dart';
import '../hel/health_page.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(20),
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage('URL_TO_YOUR_IMAGE'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Bùi Xuân Cảnh',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              '0984 465 713',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Cập nhật thông tin',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(
                      Icons.person,
                      color: Colors.green,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                    ),
                  ),
                  Divider(),
                  ListTile(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HealthPage()));
                      });
                    },
                    title: Text(
                      'Thông tin sức khỏe',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'Thời tiết',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(
                      Icons.water_drop_sharp,
                      color: Colors.blue,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                    ),
                  ),
                
                  Divider(),
                  ListTile(
                    onTap: () {},
                    title: Text(
                      'Cài đặt',
                      style: TextStyle(
                          color: Color.fromARGB(255, 1, 58, 58),
                          fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(
                      Icons.settings,
                      color: Color.fromARGB(255, 1, 58, 58),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromARGB(255, 1, 58, 58),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
