import 'package:easypay/widgets/defTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationStep4 extends StatefulWidget {
  const RegistrationStep4({Key? key}) : super(key: key);

  @override
  State<RegistrationStep4> createState() => _RegistrationStep4State();
}

class _RegistrationStep4State extends State<RegistrationStep4> {

  late TextEditingController pin;
  late TextEditingController confirmPin;
  late TextEditingController bankAccount;

  @override
  void initState() {
    pin = TextEditingController();
    confirmPin = TextEditingController();
    bankAccount = TextEditingController();
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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: 100,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: (){

              },
              child: const Text('Upload NID Front', style: TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundedTextField(
                controller: pin,
                hintText: 'Enter PIN',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundedTextField(
                controller: confirmPin,
                hintText: 'Confirm Entered PIN',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundedTextField(
                controller: bankAccount,
                hintText: 'Enter Bank Account Number',
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffD2E063)
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Next"),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff00C2E4)
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Go Back"),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Spacer(),
            Text("Already Registered?", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Text("Log in", style: TextStyle(fontSize: 20, color: Color(0xff00C2E4),fontWeight: FontWeight.bold),),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
