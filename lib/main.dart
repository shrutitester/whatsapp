import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'New whatsApp UI',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: const Color(0xFF171717),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70,left: 5,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: (){
                          _globalKey.currentState!.openDrawer();
                        },
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: (){},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 10),
                  children: [
                    TextButton(
                        onPressed: (){},
                        child: const Text(
                          'Messages',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: (){},
                        child: const Text(
                          'Online',
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: (){},
                        child: const Text(
                          'Groups',
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: (){},
                        child: const Text(
                          'More',
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 190,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.only(top: 15, left: 25, right: 15),
                height: 220,
                decoration: const BoxDecoration(
                  color: Color(0xFF27c1a9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Favorite contacts',
                          style: TextStyle(color: Colors.white),
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: const Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 90,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          buildContactAvatar('Alla', 'img1.jpg'),
                          buildContactAvatar('July', 'img2.jpg'),
                          buildContactAvatar('Mikle', 'img3.jpg'),
                          buildContactAvatar('Kler', 'img4.jpg'),
                          buildContactAvatar('Moae', 'img5.jpg'),
                          buildContactAvatar('Julie', 'img6.jpg'),
                          buildContactAvatar('Allen', 'img7.jpg'),
                          buildContactAvatar('John', 'img8.jpg'),
                          buildContactAvatar('Alla', 'img1.jpg'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
          ),
          Positioned(
            top: 365,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: const BoxDecoration(
                  color: Color(0xFFEFFFFC),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)
                  )
                ),
                child: ListView(
                  padding: const EdgeInsets.only(left: 25),
                  children: [
                    buildConversationRow('Laura','Hello, how are you', 'img1.jpg', 0),
                    buildConversationRow('Kalya','I ate your..', 'img2.jpg', 6),
                    buildConversationRow('Mary','Will you visit me', 'img3.jpg', 3),
                    buildConversationRow('Hellen','hey, whatsup', 'img5.jpg', 2),
                    buildConversationRow('Louren','Barrow money please', 'img6.jpg', 7),
                    buildConversationRow('Tom','Hello, how are you', 'img4.jpg', 2),
                    buildConversationRow('Laura','Hello, how are you', 'img7.jpg', 8),
                    buildConversationRow('Laura','Hello, how are you', 'img8.jpg', 6),
                    buildConversationRow('Laura','Hello, how are you', 'img1.jpg', 7),
                  ],
                ),
            ))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
        child: FloatingActionButton(
          backgroundColor: const Color(0xFF27c1a9),
          child: const Icon(Icons.edit_outlined, size: 30,),
          onPressed: (){},
        ),
      ),
      drawer: Drawer(
        width: 275,
        backgroundColor: Colors.black38,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(right: Radius.circular(40))
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20,50,20,20),
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(
                    width: 56,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(
                      color: Colors.white, fontSize: 16
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: const [
                  UserAvatar(filename: 'img3.jpg'),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                      'Tom Brenan',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              const DrawerItem(title: 'Account', icon: Icons.key,),
              const DrawerItem(title: 'Chats', icon: Icons.chat_bubble,),
              const DrawerItem(title: 'Notifications', icon: Icons.notifications,),
              const DrawerItem(title: 'Data and Storage', icon: Icons.storage,),
              const DrawerItem(title: 'Help', icon: Icons.help,),
              const Divider(
                height: 35,
                color: Colors.green,
              ),
              const DrawerItem(title: 'Invite a friend', icon: Icons.people_outline),
              const DrawerItem(title: 'Log out', icon: Icons.logout)

            ],
          ),
        ),
      ),
    );
  }

  Column buildConversationRow(String name, String message, String filename, int msgCount){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            UserAvatar(filename: filename),
            const SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(color: Colors.black),
                ),
                const SizedBox(height: 5,),
                Text(
                  message,
                  style: const TextStyle(color: Colors.black),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25,top: 5.0),
              child: Column(
                children:  [
                  const Text(
                    '16:35',
                    style: TextStyle(fontSize: 10),
                  ),
                  const SizedBox(height: 15,),
                  if(msgCount>0)
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: const Color(0xFF27c1a9),
                    child: Text(
                      msgCount.toString(),
                      style: const TextStyle(
                          fontSize: 10,
                          color: Colors.white
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        const Divider(
          indent: 70,
        )
      ],
    );
  }

  Padding buildContactAvatar(String name, String filename){
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        children: [
          UserAvatar(
            filename: filename,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 16
            ),
          )
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const DrawerItem({Key? key, required this.title, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
            const SizedBox(
              width: 40,
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white, fontSize: 16
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class UserAvatar extends StatelessWidget {
  final String filename;
  const UserAvatar({
    super.key, required this.filename
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius:32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 29,
        backgroundImage: Image.asset(filename).image,
      ),
    );
  }
}
