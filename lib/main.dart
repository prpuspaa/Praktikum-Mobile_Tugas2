import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(), // Ubah home menjadi halaman Login
    );
  }
}

// Halaman Login
class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        leading: Icon(Icons.login),
        title: Text("Login Page"),
        backgroundColor: Colors.pink[600],
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 15),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: Text(
              'Holla Hallo!',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Font1', fontSize: 55, fontWeight: FontWeight.bold, color: Colors.pink[600]),
            ),
          ),
          const SizedBox(height: 10),
          Container(
  width: 200,
  height: 200,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    image: DecorationImage(
      image: AssetImage('asset/halLogin.jpg'),
      fit: BoxFit.contain, // Gambar akan menyesuaikan lingkaran
),
),
),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide(width: 3, color: Colors.pink),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                icon: Icon(Icons.person),
                labelText: 'User Name',
                floatingLabelStyle: GoogleFonts.merriweather(
                  color: Colors.pink, fontWeight: FontWeight.w400
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide(width: 3, color: Colors.pink),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                icon: Icon(Icons.password),
                labelText: 'Password',
                floatingLabelStyle: GoogleFonts.merriweather(
                  color: Colors.pink, fontWeight: FontWeight.w400
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(170, 10, 170, 0),
            child: ElevatedButton(
              child: Text('Log In'),
              onPressed: () {
                String msg = "";
                bool isLogin = false;
                if (nameController.text == '123' && passwordController.text == '123') {
                  setState(() {
                    msg = "Login Berhasil";
                    isLogin = true;
                  });
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MyStatefulWidget()), // Arahkan ke Data Kelompok setelah login
                  );
                } else {
                  setState(() {
                    msg = "Login gagal";
                    isLogin = false;
                  });
                }
                var snackBar = SnackBar(
                  content: Text(msg),
                  backgroundColor: isLogin ? Colors.green[700] : Colors.red[800],
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                print(nameController.text);
                print(passwordController.text);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[600],
                foregroundColor: Colors.white,
                shape: StadiumBorder(),
             
              ),
            ),
          ),
          const SizedBox(height: 100),
          
        ],
      ),
    );
  }
}

// Halaman Data Kelompok
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        leading: Icon(Icons.group),
        title: Text('Data Kelompok'),
        backgroundColor: Colors.pink[600],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: Text(
                'KELOMPOK',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Font1', fontSize: 55, fontWeight: FontWeight.w600, color: Colors.pink[900]),
              ),
            ),
            const SizedBox(height: 15),
            // Card untuk Pramesti Puspa N
             // SingleChildScrollView with horizontal scrolling
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Enable horizontal scrolling
              child: Row(
                children: <Widget>[
                  // Card untuk Pramesti Puspa N
                  Container(
                    width: 300, // Menentukan lebar tiap kartu
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage('asset/puspa.jpg'),
                              radius: 30,
                            ),
                            const SizedBox(width: 15),
                            Text(
                              'Pramesti Puspa N',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(width: 10), // Jarak antar kartu
                  
                  // Card untuk Dhiya Bunga Syafina R
                  Container(
                    width: 300, // Menentukan lebar tiap kartu
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage('asset/bunga.jpg'),
                              radius: 30,
                            ),
                            const SizedBox(width: 15),
                            Text(
                              'Dhiya Bunga Syafina R',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(width: 10), // Jarak antar kartu
                  
                  // Anda bisa menambahkan lebih banyak kartu di sini jika perlu
                ],
              ),
            ),



            const SizedBox(height: 55),
                Container(
                height: 50,
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  child: Text('Penjumlahan & Pengurangan'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Kalkulator()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[600],
                    foregroundColor: Colors.white,
                    shape: StadiumBorder(),
                  ),
                ),
                          ),
          Container(
            height: 50,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              child: Text('Bilangan Ganjil Genap'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BilanganGanjilGenap()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[600],
                foregroundColor: Colors.white,
                shape: StadiumBorder(),
              ),
            ),
          ),
         
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: ElevatedButton(
              child: Text('Logout'),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[600],
                foregroundColor: Colors.white,
                shape: StadiumBorder(),
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}

// Halaman Kalkulator
class Kalkulator extends StatefulWidget {
  @override
  _Kalkulator createState() => _Kalkulator();
}

class _Kalkulator extends State<Kalkulator> {
  TextEditingController angka1 = TextEditingController();
  TextEditingController angka2 = TextEditingController();
  String resultText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        leading: Icon(Icons.calculate),
        title: Text("Menu Utama"),
        backgroundColor: Colors.pink[600],
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 15),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: Text(
              'PENJUMLAHAN & PENGURANGAN',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Font1', fontSize: 45, fontWeight: FontWeight.w600, color: Colors.pink[900]),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: angka1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide(width: 3, color: Colors.pink),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                labelText: 'Masukkan angka',
                floatingLabelStyle: GoogleFonts.merriweather(
                  color: Colors.pink, fontWeight: FontWeight.w400
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              controller: angka2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide(width: 3, color: Colors.pink),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                labelText: 'Masukkan angka',
                floatingLabelStyle: GoogleFonts.merriweather(
                  color: Colors.pink, fontWeight: FontWeight.w400
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 90,
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: ElevatedButton(
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 25),
                  ),
                  onPressed: () {
                    setState(() {
                      double result = double.parse(angka1.text) + double.parse(angka2.text);
                      resultText = result.toString();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[600],
                    foregroundColor: Colors.white,
                    shape: StadiumBorder(),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 90,
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: ElevatedButton(
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                  ),
                  onPressed: () {
                    setState(() {
                      double result = double.parse(angka1.text) - double.parse(angka2.text);
                      resultText = result.toString();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[600],
                    foregroundColor: Colors.white,
                    shape: StadiumBorder(),
                  ),
                ),
              ),
             
            ],
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: SizedBox(
              height: 50,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Text(
                    resultText,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
            ),
          ),
          const SizedBox(height: 135),
         
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: ElevatedButton(
              child: Text('Back To Home'),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MyStatefulWidget()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[600],
                foregroundColor: Colors.white,
                shape: StadiumBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Halaman Bilangan Ganjil Genap
class BilanganGanjilGenap extends StatefulWidget {
  @override
  _BilanganGanjilGenap createState() => _BilanganGanjilGenap();
}

class _BilanganGanjilGenap extends State<BilanganGanjilGenap> {
  TextEditingController numberController = TextEditingController();
  String resultText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        leading: Icon(Icons.filter_1),
        title: Text("Bilangan Ganjil Genap"),
        backgroundColor: Colors.pink[600],
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 15),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: Text(
              'BILANGAN GANJIL GENAP',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Font1', fontSize: 45, fontWeight: FontWeight.w600, color: Colors.pink[900]),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: numberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide(width: 3, color: Colors.pink),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                labelText: 'Masukkan angka',
                floatingLabelStyle: GoogleFonts.merriweather(
                  color: Colors.pink, fontWeight: FontWeight.w400
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(170, 10, 170, 0),
            child: ElevatedButton(
              child: Text('Check'),
              onPressed: () {
                setState(() {
                  int number = int.parse(numberController.text);
                  if (number % 2 == 0) {
                    resultText = "$number adalah bilangan genap";
                  } else {
                    resultText = "$number adalah bilangan ganjil";
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[600],
                foregroundColor: Colors.white,
                shape: StadiumBorder(),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: SizedBox(
              height: 50,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Text(
                    resultText,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
            ),
          ),
          const SizedBox(height: 135),
          
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: ElevatedButton(
              child: Text('Back To Home'),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MyStatefulWidget()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[600],
                foregroundColor: Colors.white,
                shape: StadiumBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}