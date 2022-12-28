import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
  // TODO: implement createState
}

String groupSimple = '';
bool isCheck = false;

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    TextEditingController _cotroller1 = TextEditingController();
    TextEditingController _cotroller2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab05"),
      ),
      body: Form(
        key:_formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _cotroller1,
              validator: ((value) {
                if (value!.isEmpty) {
                  return 'Enter some text';
                }
                return null;
              },
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                labelText: 'Password',
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print(_cotroller1.text);
                    print(_cotroller2.text);
                  }
                },
                child: Text('Submit'),
          ],
        ),
      ),
    );
  }
}