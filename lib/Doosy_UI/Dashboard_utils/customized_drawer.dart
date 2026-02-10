import 'package:flutter/material.dart';
import 'package:untitled2/Doosy_UI/Dashboard_utils/text_style_max.dart';

class CustomizedDrawer extends StatefulWidget {
  const CustomizedDrawer({super.key});

  @override
  State<CustomizedDrawer> createState() => _CustomizedDrawerState();
}

class _CustomizedDrawerState extends State<CustomizedDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(height: 30),
            Container(
              height: 60,
              decoration: BoxDecoration(color: Colors.transparent),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      "John Doe",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.5,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      "john2563d@gmail.com ",
                      style: TextStyleMax(),
                    ),
                  ),
                ],
              ),
            ),
            Divider(thickness: 2),
            ListTile(
              leading: Icon(Icons.home, color: Color(0xff00D9AE)),
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.history, color: Color(0xff00D9AE)),
              title: Text('Order history'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.wallet_travel, color: Color(0xff00D9AE)),
              title: Text('E- Wallet'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag, color: Color(0xff00D9AE)),
              title: Text('My Orders'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.help_outline, color: Color(0xff00D9AE)),
              title: Text('Terms & Conditions'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.notifications_none_rounded,
                color: Color(0xff00D9AE),
              ),
              title: Text('Notifications'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.airplane_ticket_outlined,
                color: Color(0xff00D9AE),
              ),
              title: Text('Tickets'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info_outline, color: Color(0xff00D9AE)),
              title: Text('About'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.star_border, color: Color(0xff00D9AE)),
              title: Text('Rate App'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.share, color: Color(0xff00D9AE)),
              title: Text('Share'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
