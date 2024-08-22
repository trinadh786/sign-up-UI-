import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: RegistrationScreen(),
      debugShowCheckedModeBanner:
          false, //to remove the debug banner corner of the mobile
    );
  }
}

// Registration Screen

class RegistrationScreen extends StatelessWidget {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
          title: Text(
        'Signup',
        style: TextStyle(
            fontSize: 40,
            color: Colors.redAccent[400],
            fontFamily: "DMSerifText"),
      )),*/
      body: Padding(
        padding: const EdgeInsets.all(20),
        // padding: EdgeInsets.only(bottom: 20.0, top: 70, left: 30),

        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Signup',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.redAccent[400],
                    fontFamily: "DMSerifText"),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                style:
                    TextStyle(fontSize: 20.0, height: 2.0, color: Colors.black),
                controller: firstNameController,
                decoration: InputDecoration(
                    labelText: 'First Name',
                    labelStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your First name';
                  }
                  return null;
                },
              ),

              SizedBox(
                height: 20,
              ),

              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Last Name',
                  labelStyle: TextStyle(fontSize: 20),
                ),
                style:
                    TextStyle(fontSize: 20.0, height: 2.0, color: Colors.black),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your last name';
                  }
                  return null;
                },
              ),

              Padding(padding: const EdgeInsets.only(bottom: 20)),
//we are writing to keep the space between the text-fields
/*Center(child: ,),*/

              TextField(
                style:
                    TextStyle(fontSize: 20, height: 2.0, color: Colors.black),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  labelStyle: TextStyle(fontSize: 20),
                ),
              ),

              Padding(padding: const EdgeInsets.only(top: 20)),

              TextField(
                style:
                    TextStyle(fontSize: 20, height: 2.0, color: Colors.black),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(fontSize: 20),
                ),
              ),

              SizedBox(height: 20),
              //we are writing to keep the space between the text-fields

              TextFormField(
                style:
                    TextStyle(fontSize: 20.0, height: 2.0, color: Colors.black),
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  labelStyle: TextStyle(fontSize: 20),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your first name';
                  } else if (value.length <= 8) {
                    return "please enter at least 8 characters in the password";
                  }

                  return null;
                },
              ),

              SizedBox(height: 20),

              TextField(
                style:
                    TextStyle(fontSize: 20.0, height: 2.0, color: Colors.black),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Address',
                  labelStyle: TextStyle(fontSize: 20),
                ),
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent[400],
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "DMSerifText"),
                ),
                child: Text('Submit',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: "DMSerifText")),

                // style: ButtonStyle(iconColor: ),
              ),
              /* ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onPressed: () {},
                // icon: const Icon(Icons.filter_list),
                label: const Text('Submit chey voii'),
              )*/
            ],
          ),
        ),
      ),
    );
  }
}

// Login Screen
class LoginScreen extends StatelessWidget {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

/*  appBar: AppBar(
  title: Text(
  'Signup',
  style: TextStyle(
  fontSize: 40,
  color: Colors.redAccent[400],
  fontFamily: "DMSerifText"),
  )),*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
          title: Text(
        'Login',
        style: TextStyle(
            fontSize: 40,
            color: Colors.redAccent[400],
            fontFamily: "DMSerifText"),
      )),*/
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 300),
            Text('Login',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.redAccent[400],
                    fontFamily: "DMSerifText")),
            SizedBox(height: 20),
            TextField(
              style:
                  TextStyle(fontSize: 20.0, height: 2.0, color: Colors.black),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone Number',
                labelStyle: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              style:
                  TextStyle(fontSize: 20.0, height: 2.0, color: Colors.black),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                labelStyle: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),

            /*TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),*/
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Login Confirmation'),
                    content: Text('Do you want to login?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context); // Close the dialog
                        },
                        child: Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context); // Close the dialog
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Text('Okay'),
                      ),
                    ],
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent[400],
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent[400],
                    fontFamily: "DMSerifText"),
                /*style: TextStyle(
                    fontSize: 40,
                    color: Colors.redAccent[400],
                    fontFamily: "DMSerifText"),*/
              ),
              child: Text('Submit',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "DMSerifText")),
              // style: ButtonStyle(iconColor: ),
            ),
          ],
        ),
      ),
    );
  }
}

// Home Screen
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HomePage',
          style: TextStyle(
              fontSize: 40,
              color: Colors.redAccent[400],
              fontFamily: "DMSerifText"),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Text(
          'Welcome Back to HYDERABAD',
          style: TextStyle(
              fontSize: 30,
              color: Colors.redAccent[400],
              fontFamily: "DMSerifText"),
        ),
      ),
    );
  }
}

class Trinadhpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.red,
            title: Text("Trinadh"),
          ),
          body: Center(
            child: RawMaterialButton(
              fillColor: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              onPressed: () {},
            ),
          )),
    );
    // throw UnimplementedError();
  }
}
