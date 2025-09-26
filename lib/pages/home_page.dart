import 'package:flutter/material.dart';

import '../components/my_card.dart';
import '../components/my_text_formfield.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "Contact List",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          toolbarHeight: 100,
          centerTitle: true,
          backgroundColor: Colors.blueGrey[500],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyTextFormField(hintText: 'Hasan'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyTextFormField(hintText: '01745674815'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey[500],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Add",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  MyCard(name: 'Jawad', phoneNumber: '01745674815'),
                  MyCard(name: 'Hasan', phoneNumber: '01745674815'),
                  MyCard(name: 'Ferdous', phoneNumber: '01745644811'),
                  MyCard(name: 'Hasan', phoneNumber: '01745674211'),
                  MyCard(name: 'Hasan', phoneNumber: '01745674812'),
                  MyCard(name: 'Hasan', phoneNumber: '01745674813'),
                  MyCard(name: 'Fahim', phoneNumber: '01745674814'),
                  MyCard(name: 'Mahtab', phoneNumber: '01745674814'),
                  MyCard(name: 'Ifty', phoneNumber: '01745674811'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
