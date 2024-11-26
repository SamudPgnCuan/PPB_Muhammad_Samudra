import 'package:flutter/material.dart';
import 'package:praktikum10_unguided/database/db_helper.dart';


class AddStudentPage extends StatefulWidget {
  final Function refreshData;

  AddStudentPage({required this.refreshData});

  @override
  _AddStudentPageState createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddStudentPage> {
  final DatabaseHelper dbHelper = DatabaseHelper();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _hobbyController = TextEditingController();

  void _addData() async {
    await dbHelper.insert({
      'nama': _nameController.text,
      'nim': _nimController.text,
      'alamat': _addressController.text,
      'hobi': _hobbyController.text,
    });

    widget.refreshData();
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _nimController.dispose();
    _addressController.dispose();
    _hobbyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text("Tambah Data Mahasiswa"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: "Nama",
              ),
            ),
            TextField(
              controller: _nimController,
              decoration: const InputDecoration(
                labelText: "NIM",
                prefixIcon: Icon(Icons.numbers)
              ),
            ),
            TextField(
              controller: _addressController,
              decoration: const InputDecoration(
                labelText: "Alamat",
                prefixIcon: Icon(Icons.home)
              ),
            ),
            TextField(
              controller: _hobbyController,
              decoration: const InputDecoration(
                labelText: "Hobi",
              prefixIcon: Icon(Icons.star)
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _addData,
              child: const Text("Simpan"),
            ),
          ],
        ),
      ),
    );
  }
}