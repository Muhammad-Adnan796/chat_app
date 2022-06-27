import 'package:flutter/material.dart';
import 'package:new_app/allcolors.dart';

class Code extends StatefulWidget {
  const Code({Key? key}) : super(key: key);

  @override
  State<Code> createState() => _CodeState();
}

class _CodeState extends State<Code> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColor.primarycolor,
        title: const Text("User Code"),
      ),
      body: Column(
        children: [
          textfields(
            "Email",
            const Icon(Icons.email),
          ),
          SizedBox(
            height: height * 0.2,
          ),
          SizedBox(
            height: height * 0.06,
            width: width * 0.4,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(AllColor.primarycolor,),),
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
              child: Text("Login"),
            ),
          ),
        ],
      ),
    );
  }

  Padding textfields(String labletext, Icon icons) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: icons,
          labelText: labletext,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
