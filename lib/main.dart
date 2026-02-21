import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'iconsax_fixed.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DateMate Chat',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: 'Poppins',
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Splash Screen
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.pink, Colors.purple],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.favorite,
                size: 100,
                color: Colors.white,
              ),
              const SizedBox(height: 20),
              const Text(
                'DateMate Chat',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Find Love & Start Chatting',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white.withOpacity(0.9),
                ),
              ),
              const SizedBox(height: 50),
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Login Screen
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Color(0xFFFFF0F0)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Icon(
                  Icons.favorite,
                  size: 80,
                  color: Colors.pink,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon: const Icon(Icons.email, color: Colors.pink),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.pink, width: 2),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: const Icon(Icons.lock, color: Colors.pink),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.pink, width: 2),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const MainScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignUpScreen()),
                        );
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Sign Up Screen
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Account'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Color(0xFFFFF0F0)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Icon(
                    Icons.favorite,
                    size: 60,
                    color: Colors.pink,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Join DateMate',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      prefixIcon: const Icon(Icons.person, color: Colors.pink),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      prefixIcon: const Icon(Icons.email, color: Colors.pink),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Phone',
                      prefixIcon: const Icon(Icons.phone, color: Colors.pink),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: const Icon(Icons.lock, color: Colors.pink),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      prefixIcon: const Icon(Icons.lock, color: Colors.pink),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Message Model
class Message {
  final String text;
  final bool isMe;
  final DateTime time;

  Message({
    required this.text,
    required this.isMe,
    required this.time,
  });
}

// Chat Screen
class ChatScreen extends StatefulWidget {
  final String userName;
  final String userImage;
  final int userId;

  const ChatScreen({
    super.key,
    required this.userName,
    required this.userImage,
    required this.userId,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final List<Message> _messages = [];

  @override
  void initState() {
    super.initState();
    // Add some welcome messages
    _messages.addAll([
      Message(
        text: 'Hi there! 👋',
        isMe: false,
        time: DateTime.now().subtract(const Duration(minutes: 5)),
      ),
      Message(
        text: 'Thanks for matching with me!',
        isMe: false,
        time: DateTime.now().subtract(const Duration(minutes: 4)),
      ),
    ]);
  }

  void _sendMessage() {
    if (_messageController.text.isNotEmpty) {
      setState(() {
        _messages.add(
          Message(
            text: _messageController.text,
            isMe: true,
            time: DateTime.now(),
          ),
        );
        _messageController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(widget.userImage),
              onBackgroundImageError: (_, __) => Container(
                color: Colors.pink.shade100,
                child: const Icon(Icons.person, color: Colors.pink),
              ),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.userName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Online',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Chat Messages
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return _buildMessageBubble(message);
              },
            ),
          ),
          
          // Message Input
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 5,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                    ),
                    onSubmitted: (_) => _sendMessage(),
                  ),
                ),
                const SizedBox(width: 8),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.pink,
                  child: IconButton(
                    icon: const Icon(Icons.send, color: Colors.white),
                    onPressed: _sendMessage,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageBubble(Message message) {
    return Align(
      alignment: message.isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: message.isMe ? Colors.pink : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20).copyWith(
            bottomRight: message.isMe ? const Radius.circular(4) : null,
            bottomLeft: !message.isMe ? const Radius.circular(4) : null,
          ),
        ),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              message.text,
              style: TextStyle(
                color: message.isMe ? Colors.white : Colors.black87,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              '${message.time.hour}:${message.time.minute.toString().padLeft(2, '0')}',
              style: TextStyle(
                color: message.isMe ? Colors.white70 : Colors.grey.shade600,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Main Screen with Drawer
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> _pages = [
    {'title': 'Home', 'page': const HomeScreen()},
    {'title': 'Chats', 'page': const ChatsListScreen()},
    {'title': 'Matches', 'page': const MatchesScreen()},
    {'title': 'Profile', 'page': const ProfileScreen()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _pages[_selectedIndex]['title'],
          style: const TextStyle(
            color: Colors.pink,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.pink),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Color(0xFFFFF0F0)],
            ),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.pink, Colors.purple],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.pink,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Welcome to DateMate',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Find Love & Chat',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              _buildDrawerItem(
                icon: Icons.home,
                label: 'Home',
                onTap: () {
                  setState(() => _selectedIndex = 0);
                  Navigator.pop(context);
                },
              ),
              _buildDrawerItem(
                icon: Icons.chat,
                label: 'Chats',
                onTap: () {
                  setState(() => _selectedIndex = 1);
                  Navigator.pop(context);
                },
              ),
              _buildDrawerItem(
                icon: Icons.favorite,
                label: 'Matches',
                onTap: () {
                  setState(() => _selectedIndex = 2);
                  Navigator.pop(context);
                },
              ),
              _buildDrawerItem(
                icon: Icons.person,
                label: 'Profile',
                onTap: () {
                  setState(() => _selectedIndex = 3);
                  Navigator.pop(context);
                },
              ),
              const Divider(),
              _buildDrawerItem(
                icon: Icons.info,
                label: 'About Us',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AboutPage()),
                  );
                },
              ),
              _buildDrawerItem(
                icon: Icons.contact_mail,
                label: 'Contact',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ContactPage()),
                  );
                },
              ),
              const Divider(),
              _buildDrawerItem(
                icon: Icons.logout,
                label: 'Logout',
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Iconsax.home),
            selectedIcon: Icon(Iconsax.home1),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.chat),
            selectedIcon: Icon(Icons.chat),
            label: 'Chats',
          ),
          NavigationDestination(
            icon: Icon(Iconsax.heart),
            selectedIcon: Icon(Iconsax.heart1),
            label: 'Matches',
          ),
          NavigationDestination(
            icon: Icon(Iconsax.user),
            selectedIcon: Icon(Iconsax.user1),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.pink),
      title: Text(
        label,
        style: const TextStyle(fontSize: 16),
      ),
      onTap: onTap,
    );
  }
}

// Home Screen (Your existing swipe cards with CHAT BUTTON added)
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late SwiperController swiperController;

  final List<Map<String, dynamic>> profiles = [
    {
      'id': 1,
      'name': 'Sarah, 24',
      'bio': 'Coffee lover ☕ | Travel enthusiast ✈️',
      'image': 'assets/images/profile1.jpg',
      'distance': '2 km away',
    },
    {
      'id': 2,
      'name': 'Mike, 28',
      'bio': 'Fitness coach 💪 | Foodie 🍜',
      'image': 'assets/images/profile2.jpg',
      'distance': '5 km away',
    },
    {
      'id': 3,
      'name': 'Emma, 26',
      'bio': 'Artist 🎨 | Dog mom 🐕',
      'image': 'assets/images/profile3.jpg',
      'distance': '3 km away',
    },
    {
      'id': 4,
      'name': 'James, 30',
      'bio': 'Tech entrepreneur 💻 | Guitar player 🎸',
      'image': 'assets/images/profile4.jpg',
      'distance': '7 km away',
    },
    {
      'id': 5,
      'name': 'Olivia, 25',
      'bio': 'Yoga instructor 🧘 | Plant mom 🌿',
      'image': 'assets/images/profile5.jpg',
      'distance': '1.5 km away',
    },
    {
      'id': 6,
      'name': 'William, 29',
      'bio': 'Chef 👨‍🍳 | Food photographer 📸',
      'image': 'assets/images/profile6.jpg',
      'distance': '4 km away',
    },
    {
      'id': 7,
      'name': 'Sophia, 23',
      'bio': 'Fashion designer 👗 | Vintage lover',
      'image': 'assets/images/profile7.jpg',
      'distance': '3.2 km away',
    },
    {
      'id': 8,
      'name': 'Alexander, 31',
      'bio': 'Pilot ✈️ | Adventure seeker 🏔️',
      'image': 'assets/images/profile8.jpg',
      'distance': '12 km away',
    },
    {
      'id': 9,
      'name': 'Isabella, 27',
      'bio': 'Photographer 📷 | Cat mom 🐱',
      'image': 'assets/images/profile9.jpg',
      'distance': '2.8 km away',
    },
    {
      'id': 10,
      'name': 'Daniel, 32',
      'bio': 'Musician 🎸 | Vinyl collector',
      'image': 'assets/images/profile10.jpg',
      'distance': '6 km away',
    },
    {
      'id': 11,
      'name': 'Mia, 24',
      'bio': 'Dancer 💃 | Choreographer',
      'image': 'assets/images/profile11.jpg',
      'distance': '1.2 km away',
    },
    {
      'id': 12,
      'name': 'David, 33',
      'bio': 'Architect 🏛️ | Sketch artist ✏️',
      'image': 'assets/images/profile12.jpg',
      'distance': '9 km away',
    },
    {
      'id': 13,
      'name': 'Charlotte, 26',
      'bio': 'Writer 📚 | Poetry lover',
      'image': 'assets/images/profile13.jpg',
      'distance': '2.5 km away',
    },
    {
      'id': 14,
      'name': 'Joseph, 29',
      'bio': 'Software dev 💻 | Gamer 🎮',
      'image': 'assets/images/profile14.jpg',
      'distance': '3.8 km away',
    },
    {
      'id': 15,
      'name': 'Amelia, 25',
      'bio': 'Marine biologist 🌊 | Scuba diver 🤿',
      'image': 'assets/images/profile15.jpg',
      'distance': '15 km away',
    },
    {
      'id': 16,
      'name': 'Matthew, 30',
      'bio': 'Teacher 📖 | Soccer coach ⚽',
      'image': 'assets/images/profile16.jpg',
      'distance': '4.5 km away',
    },
    {
      'id': 17,
      'name': 'Ava, 27',
      'bio': 'Makeup artist 💄 | Beauty blogger',
      'image': 'assets/images/profile17.jpg',
      'distance': '2.3 km away',
    },
    {
      'id': 18,
      'name': 'Christopher, 28',
      'bio': 'Entrepreneur 💼 | Investor',
      'image': 'assets/images/profile18.jpg',
      'distance': '8 km away',
    },
    {
      'id': 19,
      'name': 'Grace, 24',
      'bio': 'Baker 🧁 | Sweet tooth 🍰',
      'image': 'assets/images/profile19.jpg',
      'distance': '1.8 km away',
    },
    {
      'id': 20,
      'name': 'Andrew, 31',
      'bio': 'Veterinarian 🐾 | Animal rescuer',
      'image': 'assets/images/profile20.jpg',
      'distance': '6.5 km away',
    },
  ];

  @override
  void initState() {
    super.initState();
    swiperController = SwiperController();
  }

  @override
  void dispose() {
    swiperController.dispose();
    super.dispose();
  }

  void handleLike(int index) {
    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('You liked ${profiles[index]['name']}! 💕'),
        backgroundColor: Colors.green,
        duration: const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
      ),
    );

    if (index < profiles.length - 1) {
      swiperController.next();
    } else {
      swiperController.move(0);
    }
  }

  void handleDislike(int index) {
    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('You passed on ${profiles[index]['name']} 👋'),
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
      ),
    );

    if (index < profiles.length - 1) {
      swiperController.next();
    } else {
      swiperController.move(0);
    }
  }

  void openChat(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatScreen(
          userName: profiles[index]['name'],
          userImage: profiles[index]['image'],
          userId: profiles[index]['id'],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Swiper(
        controller: swiperController,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                // Profile Image Section (50%)
                Expanded(
                  flex: 5,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                        child: Image.asset(
                          profiles[index]['image'],
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: Colors.grey[300],
                              child: const Center(
                                child: Icon(
                                  Icons.person,
                                  size: 100,
                                  color: Colors.grey,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      // Distance badge
                      Positioned(
                        top: 16,
                        right: 16,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Iconsax.location,
                                size: 14,
                                color: Colors.pink,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                profiles[index]['distance'],
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Info Section (30%)
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                profiles[index]['name'],
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const Icon(
                              Iconsax.verify,
                              color: Colors.blue,
                              size: 18,
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          profiles[index]['bio'],
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Spacer(),
                        // Action buttons (20%)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Dislike button
                            GestureDetector(
                              onTap: () => handleDislike(index),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.red.withOpacity(0.2),
                                      blurRadius: 8,
                                      spreadRadius: 2,
                                    ),
                                  ],
                                ),
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.white,
                                  child: const Icon(
                                    Iconsax.closeCircle,
                                    color: Colors.red,
                                    size: 28,
                                  ),
                                ),
                              ),
                            ),
                            // Like button
                            GestureDetector(
                              onTap: () => handleLike(index),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.pink.withOpacity(0.3),
                                      blurRadius: 8,
                                      spreadRadius: 2,
                                    ),
                                  ],
                                ),
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundColor: Colors.pink,
                                  child: const Icon(
                                    Iconsax.heart,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                                ),
                              ),
                            ),
                            // Chat button (NEW!)
                            GestureDetector(
                              onTap: () => openChat(index),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.blue.withOpacity(0.2),
                                      blurRadius: 8,
                                      spreadRadius: 2,
                                    ),
                                  ],
                                ),
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.blue,
                                  child: const Icon(
                                    Icons.chat,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: profiles.length,
        viewportFraction: 0.85,
        scale: 0.9,
        loop: true,
        autoplay: false,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}

// Chats List Screen
class ChatsListScreen extends StatefulWidget {
  const ChatsListScreen({super.key});

  @override
  State<ChatsListScreen> createState() => _ChatsListScreenState();
}

class _ChatsListScreenState extends State<ChatsListScreen> {
  final List<Map<String, dynamic>> recentChats = [
    {
      'id': 1,
      'name': 'Sarah, 24',
      'lastMessage': 'Hey! How are you?',
      'time': '5m ago',
      'image': 'assets/images/profile1.jpg',
      'unread': 2,
    },
    {
      'id': 2,
      'name': 'Mike, 28',
      'lastMessage': 'Want to grab coffee? ☕',
      'time': '1h ago',
      'image': 'assets/images/profile2.jpg',
      'unread': 0,
    },
    {
      'id': 3,
      'name': 'Emma, 26',
      'lastMessage': 'Love your profile! 😊',
      'time': '3h ago',
      'image': 'assets/images/profile3.jpg',
      'unread': 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: recentChats.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.chat,
                    size: 80,
                    color: Colors.grey[300],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'No chats yet',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Start swiping and like someone to chat!',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: recentChats.length,
              itemBuilder: (context, index) {
                final chat = recentChats[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(chat['image']),
                      onBackgroundImageError: (_, __) => Container(
                        color: Colors.pink.shade100,
                        child: const Icon(Icons.person, color: Colors.pink),
                      ),
                    ),
                    title: Text(
                      chat['name'],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      chat['lastMessage'],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          chat['time'],
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[500],
                          ),
                        ),
                        if (chat['unread'] > 0)
                          Container(
                            margin: const EdgeInsets.only(top: 4),
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(
                              color: Colors.pink,
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              chat['unread'].toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatScreen(
                            userName: chat['name'],
                            userImage: chat['image'],
                            userId: chat['id'],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}

// Keep your existing MatchesScreen, ProfileScreen, AboutPage, and ContactPage here
class MatchesScreen extends StatelessWidget {
  const MatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Matches',
          style: TextStyle(
            color: Colors.pink,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Iconsax.heart,
              size: 80,
              color: Colors.pink.shade200,
            ),
            const SizedBox(height: 20),
            const Text(
              'No matches yet',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Start swiping to find your match!',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Profile',
          style: TextStyle(
            color: Colors.pink,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(Iconsax.setting1, color: Colors.pink),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.pink.shade100,
              child: const Icon(
                Iconsax.profileCircle,
                size: 80,
                color: Colors.pink,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Your Name',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '24 years old',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 30),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Icon(Iconsax.location, color: Colors.pink),
                        const SizedBox(height: 8),
                        Text(
                          '2 km away',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(Iconsax.heart, color: Colors.pink),
                        const SizedBox(height: 8),
                        Text(
                          '0 matches',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About Us',
          style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Icon(
              Icons.favorite,
              size: 80,
              color: Colors.pink,
            ),
            const SizedBox(height: 20),
            const Text(
              'DateMate Chat',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Where Love Begins with a Chat',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 30),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    _buildAboutItem(
                      icon: Icons.favorite,
                      title: 'Our Mission',
                      description: 'To help people find meaningful connections through genuine conversations.',
                    ),
                    const Divider(),
                    _buildAboutItem(
                      icon: Icons.chat,
                      title: 'Our Vision',
                      description: 'To create a safe and fun platform where love stories begin with a simple chat.',
                    ),
                    const Divider(),
                    _buildAboutItem(
                      icon: Icons.handshake,
                      title: 'Our Values',
                      description: 'Authenticity, Respect, Safety, and Love are at the heart of everything we do.',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAboutItem({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.pink.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.pink),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact Us',
          style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Icon(
              Icons.contact_mail,
              size: 80,
              color: Colors.pink,
            ),
            const SizedBox(height: 20),
            const Text(
              'Get in Touch',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
            const SizedBox(height: 30),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    _buildContactItem(
                      icon: Icons.location_on,
                      title: 'Address',
                      value: '123 Love Street, Romance City, RC 12345',
                    ),
                    const Divider(),
                    _buildContactItem(
                      icon: Icons.phone,
                      title: 'Phone',
                      value: '+1 (555) 123-4567',
                    ),
                    const Divider(),
                    _buildContactItem(
                      icon: Icons.email,
                      title: 'Email',
                      value: 'support@datemate.com',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactItem({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.pink.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.pink),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}






