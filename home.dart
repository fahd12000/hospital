import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("apps"), backgroundColor: Colors.blue),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue[800]),
              currentAccountPicture: CircleAvatar(),
              accountName: Text("زائر"),
              accountEmail: Text("مرحبا بك في نظامنا"),
            ),
            _buildDrawer(Icons.home, "الرئيسية",(){}),
            _buildDrawer(Icons.person_add, "اضاقة مرضـــى", () {}),
            _buildDrawer(Icons.list_alt, "سجل الحجوزات", () {}),
            Divider(),
            _buildDrawer(Icons.logout, "تسجيل خروج", () {}),
          ],
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,

        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(radius: 45),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "نحن نهتم بصحتكم على مدار الساعة",
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "الخدمات الاساسية",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        _buildCard(
                          context,
                          "المرضى",
                          Icons.people,
                          Colors.green,
                        ),
                        _buildCard(
                          context,
                          "الحجز",
                          Icons.calendar_month,
                          Colors.blue,
                        ),
                        _buildCard(
                          context,
                          "الحجز",
                          Icons.calendar_month,
                          Colors.blue,
                        ),
                        _buildCard(
                          context,
                          "الاطباء",
                          Icons.medication,
                          Colors.blue,
                        ),
                        _buildCard(
                          context,
                          "الاطباء",
                          Icons.medication,
                          Colors.blue,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(
    BuildContext context,
    String title,
    IconData icon,
    Color color,
  ) {
    return Expanded(
      child: GestureDetector(
        onTap: () {},
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Icon(icon, size: 40, color: color),
                SizedBox(height: 10),
                Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDrawer(IconData icon, String title, VoidCallback onTap,) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue[800]),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      onTap: onTap,
    );
  }
}
