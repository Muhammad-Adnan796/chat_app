import 'package:flutter/material.dart';
import 'package:new_app/allcolors.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AllColor.primarycolor,
      appBar: AppBar(
        backgroundColor: AllColor.primarycolor,
        title: const Text("Chat App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: width * 0.88,
                  child: textfields(
                    "Enter text",
                    const Icon(
                      Icons.text_fields_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.send,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding textfields(String labletext, Icon icons) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        cursorColor: Colors.white,
        focusNode: FocusNode(),
        enabled: true,
        decoration: InputDecoration(
          prefixIcon: icons,
          labelText: labletext,
          labelStyle: TextStyle(color: Colors.white),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.white),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
