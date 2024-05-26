import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Center",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.shade800,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(5, 5),
                    spreadRadius: 5,
                    blurRadius: 5,
                  )
                ],
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 28,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                              "https://t4.ftcdn.net/jpg/02/29/75/83/360_F_229758328_7x8jwCwjtBMmC6rgFzLFhZoEpLobB6L8.jpg"),
                        ),
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Mausam Rayamajhi",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(width: 12),
                              Icon(Icons.edit, size: 20, color: Colors.white)
                            ],
                          ),
                          Text(
                            "A trendsetter",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "846",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Collect",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.7)),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "51",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Attention",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.7)),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "267",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Track",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.7)),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "39",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "coupons",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.7)),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      radius: 24,
                      child: Icon(
                        Icons.wallet,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text("Wallet"),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      radius: 24,
                      child: Icon(
                        Icons.delivery_dining,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text("Delivery"),
                  ],
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade300,
                          radius: 24,
                          child: Icon(
                            Icons.message,
                            color: Colors.black,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: Container(
                            alignment: Alignment.center,
                            height: 15,
                            width: 15,
                            child: Text(
                              "2",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue.shade800,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text("Message"),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      radius: 24,
                      child: Icon(
                        Icons.attach_money,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text("Service"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 25),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 10,
                    blurRadius: 10,
                    color: Color.fromARGB(255, 211, 223, 235),
                  ),
                ],
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.purple,
                  child: Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Address",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Ensure your harvesting address"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            SizedBox(height: 25),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 10,
                    blurRadius: 10,
                    color: Color.fromARGB(255, 211, 223, 235),
                  ),
                ],
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.pink,
                  child: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Privacy",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("System permission change"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            SizedBox(height: 25),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 10,
                    blurRadius: 10,
                    color: Color.fromARGB(255, 211, 223, 235),
                  ),
                ],
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.yellow.shade700,
                  child: Icon(
                    Icons.category,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "General",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Basic functional setting"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            SizedBox(height: 25),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 10,
                    blurRadius: 10,
                    color: Color.fromARGB(255, 211, 223, 235),
                  ),
                ],
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 29, 231, 214),
                  child: Icon(
                    Icons.notification_important,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Notification",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Take over the news in time"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

