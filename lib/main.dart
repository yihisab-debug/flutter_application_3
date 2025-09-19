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
  final TextEditingController num3 = TextEditingController();
  final TextEditingController num4 = TextEditingController();
  final TextEditingController num5 = TextEditingController();
  final TextEditingController num6 = TextEditingController();
  final TextEditingController num7 = TextEditingController();
  final TextEditingController num8 = TextEditingController();
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
  String sum1 = '0';
  String sum2 = '0';
  String sum3 = '0';
  String sum4 = '0';
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
      sum1 = (int.parse(number1) + int.parse(number2)).toString();
    });
  }

    void minus(){
    final number3 = num3.text;
    final number4 = num4.text;
    setState(() {
      sum2 = (int.parse(number3) - int.parse(number4)).toString();
    });
  }

      void multiply(){
    final number5 = num5.text;
    final number6 = num6.text;
    setState(() {
      sum3 = (int.parse(number5) * int.parse(number6)).toString();
    });
  }



void share(){
  final number7 = num7.text;
  final number8 = num8.text;
  setState(() {
    if (int.parse(number8) == 0) {
      sum4 = 'Ошибка: деление на 0';
    } else {
      sum4 = (int.parse(number7) / int.parse(number8)).toString();
    }
  });
}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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

            Text(sum1),
            Text(name),

            const SizedBox(height: 20),

            TextField(
              controller: num3,
              decoration: InputDecoration(
                labelText: 'Num3',
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
              controller: num4,
              decoration: InputDecoration(
                labelText: 'Num4',
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
              onPressed: minus,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 174, 245, 211),
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Minus',
                style: TextStyle(fontSize: 18),
              ),
            ),

            Text(sum2),
            Text(name),

            const SizedBox(height: 20),

            TextField(
              controller: num5,
              decoration: InputDecoration(
                labelText: 'Num5',
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
              controller: num6,
              decoration: InputDecoration(
                labelText: 'Num6',
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
              onPressed: multiply,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 174, 245, 211),
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Multiply',
                style: TextStyle(fontSize: 18),
              ),
            ),

            Text(sum3),
            Text(name),

            const SizedBox(height: 20),

            TextField(
              controller: num7,
              decoration: InputDecoration(
                labelText: 'Num7',
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
              controller: num8,
              decoration: InputDecoration(
                labelText: 'Num8',
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
              onPressed: share,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 174, 245, 211),
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Share',
                style: TextStyle(fontSize: 18),
              ),
            ),

            Text(sum4),
            Text(name),
            
          ],
        ),
      ),
      ),
    );
  }
}