import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final TextEditingController user = TextEditingController();
  final TextEditingController password1 = TextEditingController();
  final TextEditingController num1 = TextEditingController();
  final TextEditingController num2 = TextEditingController();
  String _message = '';
  String name = 'MyName';

  double scale_factor = 1.0;
  void _login() {
    final username = user.text;
    final password = password1.text;

    if (username.isEmpty || password.isEmpty) {
      setState(() {
        _message = 'Пожалуйста заполните поля.';
      });
    } else if (username == 'admin' && password == 'password1234') {
      setState(() {
        _message = 'Login successful!';
      });
    }else if(username == 'user' && password == '1234'){
        setState(() {
        _message = 'Login successful!';
      });
    }
     else {
      setState(() {
        _message = 'Invalid username or password.';
      });
    }
  }
  @override
  int x = 0;
  String sum = '0';
  bool flag = true;
  var list = [1,2,3,4,5,6,7,8,9,10];
  var data = null;
  double balance = 15.10;
  
  void counter(){
    setState(() {
      x++;
    });
  }

  void plus(){
    final number1 = num1.text;
    final number2 = num2.text;
    setState(() {
      sum = (int.parse(number1) + int.parse(number2)).toString();
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            TextField(
              controller: user,
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: const TextStyle(color: Colors.black),
                filled: true,
                fillColor: const Color.fromARGB(255, 174, 245, 211),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 98, 0, 255),
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 0, 0, 0),
                    width: 2,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: password1,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: const TextStyle(color: Colors.black),
                filled: true,
                fillColor: const Color.fromARGB(255, 174, 245, 211),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 98, 0, 255),
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 0, 0, 0),
                    width: 2,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: _login,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 174, 245, 211),
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 18),
              ),
            ),

            const SizedBox(height: 20),

            Text(
              _message,
              style: TextStyle(
                color: _message == 'Login successful!' ? Colors.green : Colors.red,
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: counter,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 174, 245, 211),
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Counter',
                style: TextStyle(fontSize: 18),
              ),
            ),

            Text(x.toString()),

            const SizedBox(height: 20),

            TextField(
              controller: num1,
              decoration: InputDecoration(
                labelText: 'Num1',
                labelStyle: const TextStyle(color: Colors.black),
                filled: true,
                fillColor: const Color.fromARGB(255, 174, 245, 211),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 98, 0, 255),
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 0, 0, 0),
                    width: 2,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: num2,
              decoration: InputDecoration(
                labelText: 'Num2',
                labelStyle: const TextStyle(color: Colors.black),
                filled: true,
                fillColor: const Color.fromARGB(255, 174, 245, 211),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 98, 0, 255),
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 0, 0, 0),
                    width: 2,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: plus,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 174, 245, 211),
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Plus',
                style: TextStyle(fontSize: 18),
              ),
            ),

            Text(sum),
            Text(name)
          ],
        ),
      ),
    );
  }
}