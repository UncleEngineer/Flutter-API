import 'package:flutter/material.dart';
import 'package:maintenanceapi/pages/addpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, String>> data = [
    {
      'name': 'ดำ',
      'department': 'ซ่อม',
      'machine': 'เครื่องตัดเหล็ก',
      'problem': 'เสีย',
      'tel': '0900000000'
    },
    {
      'name': 'แดง',
      'department': 'ซ่อม',
      'machine': 'เครื่องตัดเหล็ก',
      'problem': 'เสีย',
      'tel': '0911111111'
    },
    {
      'name': 'ขาว',
      'department': 'ซ่อม',
      'machine': 'เครื่องตัดเหล็ก',
      'problem': 'เสีย',
      'tel': '0922222222'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(widget.title),
        titleTextStyle: const TextStyle(fontSize: 20),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AddPage()));
              },
              icon: const Icon(Icons.add),
              alignment: Alignment.topRight)
        ],
      ),
      body: buildDataTable(),
    );
  }

  Widget buildDataTable() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: FittedBox(
        child: DataTable(border: TableBorder.all(width: 1), columns: const [
          DataColumn(
              label: Text(
            'ชื่อ',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
          DataColumn(
              label: Text(
            'แผนก',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
          DataColumn(
              label: Text(
            'เครื่องจักร',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
          DataColumn(
              label: Text(
            'ปัญหา',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
          DataColumn(
              label: Text(
            'เบอร์โทร',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ))
        ], rows: data.map((value) => DataRow(cells: [
          DataCell(Text(value['name']!, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),)),
          DataCell(Text(value['department']!, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),)),
          DataCell(Text(value['machine']!, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),)),
          DataCell(Text(value['problem']!, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),)),
          DataCell(Text(value['tel']!, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),))
        ])).toList()),
      ),
    );
  }
}
