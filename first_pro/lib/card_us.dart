import 'package:flutter/material.dart';

class card_us extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Center',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              textAlign: TextAlign.left,
            ),
             SizedBox(height: 25),
            cardUser(),
            iconRow(),
            iconCol(),
          ],
        ),
      ),
    );
  }
}

class cardUser extends StatelessWidget {
  Widget _buildUserRow() {
    return    Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(Icons.account_circle, size: 30),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    'Mausam Rayamajhi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10), // مساحة صغيرة بين النص وأيقونة التعديل
                  Icon(
                    Icons.edit,
                    color: Colors.white,
                    size: 20,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'A trendsetter',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      );
  }




  Widget _buildUserStats() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildUserStatsItem('846', 'Collect'),
          _buildUserStatsItem('51', 'Attention'),
          _buildUserStatsItem('267', 'Track'),
          _buildUserStatsItem('39', 'Coupons'),
        ],
      ),
    );
  }

  Widget _buildUserStatsItem(String value, String text) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        // SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 14),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 180,
      decoration: BoxDecoration(
        color: Color(0xff3977ff),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color(0xff3977ff).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildUserRow(),
          _buildUserStats(),
        ],
      ),
    );
  }
}

class iconRow extends StatelessWidget {
  Widget _buildActionItem(String name, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xfff6f5f8),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 30, color: Color(0xFF42526F)),
            alignment: Alignment.center,
          ),
          SizedBox(height: 5),
          Text(
            name,
            style:
                TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 14),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildActionItem('Wallet', Icons.account_balance_wallet),
          _buildActionItem('Delivery', Icons.local_shipping),
          _buildActionItem('Message', Icons.message),
          _buildActionItem('Service', Icons.supervisor_account_rounded),
        ],
      ),
    );
  }
}

class colItem {
  final IconData icon;
  final Color color;
  final String title;
  final String description;

  const colItem({
    required this.color,
    required this.description,
    required this.icon,
    required this.title,
  });
}

const List<colItem> settingsItems = [
  colItem(
    icon: Icons.location_on,
    color: Color(0xff8D7AEE),
    title: 'Address',
    description: 'Ensure your harvesting address',
  ),
  colItem(
    icon: Icons.lock,
    color: Color(0xffF468B7),
    title: 'Privacy',
    description: 'System permission change',
  ),
  colItem(
    icon: Icons.menu,
    color: Color(0xffFEC85C),
    title: 'General',
    description: 'Basic functional settings',
  ),
  colItem(
    icon: Icons.notifications,
    color: Color(0xff5FD0D3),
    title: 'Notifications',
    description: 'Take over the news in time',
  ),
];

class iconCol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: settingsItems
          .map((settingsItem) => SettingsItem(
                settingsItem.icon,
                settingsItem.color,
                settingsItem.title,
                settingsItem.description,
              ))
          .toList(),
    );
  }
}

class SettingsItem extends StatefulWidget {
  final IconData icon;
  final Color iconBgColor;
  final String title;
  final String description;

  SettingsItem(this.icon, this.iconBgColor, this.title, this.description);

  @override
  _SettingsItemState createState() => _SettingsItemState();
}

class _SettingsItemState extends State<SettingsItem> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => pressed = true),
      onTapUp: (_) => setState(() => pressed = false),
      onTapCancel: () => setState(() => pressed = false),
      onTap: () => print('onTap'),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        curve: Curves.easeOut,
        transform: Matrix4.identity()..scale(pressed ? 0.95 : 1.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: pressed
              ? []
              : [
                  BoxShadow(
                    color: Color.fromARGB(44, 91, 240, 232),
                    blurRadius: 20,
                    offset: Offset(0, 10),
                  ),
                ],
        ),
        margin: EdgeInsets.symmetric(vertical: 14),
        height: 80,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: widget.iconBgColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(widget.icon, size: 20, color: Colors.white),
              margin: EdgeInsets.only(left: 15, right: 10),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    widget.description,
                    style: TextStyle(
                      color: Colors.black26,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: Color.fromARGB(66, 170, 170, 170),size: 20,),
          ],
        ),
      ),
    );
  }
}
