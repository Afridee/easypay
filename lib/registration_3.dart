import 'dart:io';

import 'package:easypay/registration_4.dart';
import 'package:easypay/widgets/defTextField.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationStep3 extends StatefulWidget {
  const RegistrationStep3({Key? key}) : super(key: key);

  @override
  State<RegistrationStep3> createState() => _RegistrationStep3State();
}

class _RegistrationStep3State extends State<RegistrationStep3> {

  late TextEditingController permanentAddress;
  late TextEditingController residentialAddress;
  File nidFront = File("");
  File nidBack = File("");

  @override
  void initState() {
    permanentAddress = TextEditingController();
    residentialAddress = TextEditingController();
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
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 80,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () async{
                    FilePickerResult? result = await FilePicker.platform.pickFiles();

                    if (result != null) {
                      nidFront = File(result.files.single.path ?? "");
                      setState(() {});
                    } else {
                      // User canceled the picker
                    }
                  },
                  child: Row(
                    children: [
                      const Text('Upload NID Front', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                nidFront.path!="" ? Icon(Icons.check_circle, color: Colors.green) : Container()
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 80,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () async{
                    FilePickerResult? result = await FilePicker.platform.pickFiles();

                    if (result != null) {
                      nidBack = File(result.files.single.path ?? "");
                      setState(() {});
                    } else {
                      // User canceled the picker
                    }
                  },
                  child: Row(
                    children: [
                      const Text('Upload NID Back', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                nidBack.path!="" ? Icon(Icons.check_circle, color: Colors.green) : Container()
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundedTextField(
                controller: permanentAddress,
                hintText: 'Enter Permanent Address',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundedTextField(
                controller: residentialAddress,
                hintText: 'Enter Residential Address',
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 80,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () async{
                    FilePickerResult? result = await FilePicker.platform.pickFiles();

                    if (result != null) {
                      nidBack = File(result.files.single.path ?? "");
                      setState(() {});
                    } else {
                      // User canceled the picker
                    }
                  },
                  child: Row(
                    children: [
                      const Text('Upload NID Back', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                nidBack.path!="" ? Icon(Icons.check_circle, color: Colors.green) : Container()
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 80,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () async{
                    FilePickerResult? result = await FilePicker.platform.pickFiles();

                    if (result != null) {
                      nidBack = File(result.files.single.path ?? "");
                      setState(() {});
                    } else {
                      // User canceled the picker
                    }
                  },
                  child: Row(
                    children: [
                      const Text('Upload NID Back', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                nidBack.path!="" ? Icon(Icons.check_circle, color: Colors.green) : Container()
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return const RegistrationStep4();
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
                        child: Text("Next"),
                      ),
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
