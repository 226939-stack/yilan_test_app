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
            ],
          ),
        ), // Column
      ), // Scaffold
    ); // MaterialApp
  }
}
