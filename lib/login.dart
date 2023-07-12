import 'package:easypay/home.dart';
import 'package:easypay/registration_1.dart';
import 'package:easypay/widgets/defTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  late TextEditingController mobileNumber;
  late TextEditingController pin;

  @override
  void initState() {
    mobileNumber = TextEditingController();
    pin = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset("assets/images/gg2.png"),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundedTextField(
                controller: mobileNumber,
                hintText: 'Enter Mobile Number',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundedTextField(
                controller: pin,
                hintText: 'Enter PIN',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return const Home();
                }));
              },
              child: Container(
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffD2E063)
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Login"),
                  ),
                ),
              ),
            ),
            Spacer(),
            Text("Not registered as a User?", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return const RegistrationStep1();
                  }));
                },
                child: Text("Sign Up", style: TextStyle(fontSize: 20, color: Color(0xff00C2E4),fontWeight: FontWeight.bold),)),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
