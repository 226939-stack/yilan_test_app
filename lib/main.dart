import 'package:flutter/material.dart';

// 程序的入口
void main() {
  runApp(const Towa());
}

// 定义一个自定义的无状态组件（页面）
class Towa extends StatelessWidget {
  const Towa({super.key});

  // 定义一个空的函数，避免代码报错
  void doSomething() {
    print("clicked");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: doSomething, // 点击左侧菜单图标时触发该函数
            icon: const Icon(Icons.menu),
          ), // IconButton
          backgroundColor: Colors.blue,
          title: const Text("Profile"),
        ), // AppBar
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              ClipOval(
                child: Image.asset(
                  'assets/images/YiLan.jpg',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "PeiYiLan",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(88.888),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.school, size: 17, color: Colors.yellow),
                    SizedBox(width: 4),
                    Text(
                      "Student",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: Colors.yellowAccent,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/cat.jpg',
                            width: 50,
                          ),
                          const SizedBox(height: 10),
                          const Text("80%"),
                          const SizedBox(height: 10),
                          const Text("W YiLan"),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: Colors.purpleAccent,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/cat.jpg',
                            width: 50,
                          ),
                          const SizedBox(height: 10),
                          const Text("80%"),
                          const SizedBox(height: 10),
                          const Text("W YiLan"),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: Colors.yellowAccent,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/cat.jpg',
                            width: 50,
                          ),
                          const SizedBox(height: 10),
                          const Text("80%"),
                          const SizedBox(height: 10),
                          const Text("W YiLan"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ), // Column
      ), // Scaffold
    ); // MaterialApp
  }
}
