import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final _formKey = GlobalKey<FormState>();

  final _name = TextEditingController();
  final _department = TextEditingController();
  final _machine = TextEditingController();
  final _problem = TextEditingController();
  final _tel = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('เพิ่มข้อมูล'),
        titleTextStyle: const TextStyle(fontSize: 20),
      ),
      body: buildForm(),
    );
  }

  Widget buildForm(){
    return Form(key: _formKey, child: Column(
      children: [
        // ชื่อ
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            controller: _name,
            decoration: const InputDecoration(
              border: OutlineInputBorder(), labelText: 'Name'
            ),
            validator: (value) {
              if (value!.isEmpty){
                return 'Please enter your name';
              }
              return null;
            },
          ),
        ),
        // แผนก
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            controller: _department,
            decoration: const InputDecoration(
              border: OutlineInputBorder(), labelText: 'Department'
            ),
            validator: (value) {
              if (value!.isEmpty){
                return 'Please enter your department';
              }
              return null;
            },
          ),
        ),
        // เครื่องจักร
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            controller: _machine,
            decoration: const InputDecoration(
              border: OutlineInputBorder(), labelText: 'Machine'
            ),
            validator: (value) {
              if (value!.isEmpty){
                return 'Please enter your machine';
              }
              return null;
            },
          ),
        ),
        // ปัญหา
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            controller: _problem,
            decoration: const InputDecoration(
              border: OutlineInputBorder(), labelText: 'Problem'
            ),
            validator: (value) {
              if (value!.isEmpty){
                return 'Please enter your problem';
              }
              return null;
            },
          ),
        ),
        // เบอร์โทร
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            controller: _tel,
            decoration: const InputDecoration(
              border: OutlineInputBorder(), labelText: 'Tel. number'
            ),
            validator: (value) {
              if (value!.isEmpty){
                return 'Please enter your name tel.number';
              }
              return null;
            },
            keyboardType: TextInputType.phone,
          ),
        ),
        // ปุ่ม Submit
        ElevatedButton(onPressed: (){
          if (_formKey.currentState!.validate()){
            print(_name.text);
            print(_department.text);
            print(_machine.text);
            print(_problem.text);
            print(_tel.text);
            _formKey.currentState!.reset();
            const snackBar = SnackBar(content: Text('Submit data success!'));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        }, child: const Text('Submit'))
      ],
    ));
  }
}