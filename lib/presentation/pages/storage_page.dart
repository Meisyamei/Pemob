import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class StoragePage extends StatelessWidget {
  final HomeController controller;
  final Map<String, int> stock = {'Barang 1': 50, 'Barang 2': 30, 'Barang 3': 20};

  StoragePage(this.controller);

  void _addStock(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String newItem = '';
        int newQuantity = 0;
        return AlertDialog(
          title: Text('Tambah Stok Barang'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Nama Barang'),
                onChanged: (value) => newItem = value,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Jumlah Stok'),
                keyboardType: TextInputType.number,
                onChanged: (value) => newQuantity = int.tryParse(value) ?? 0,
              ),
            ],
          ),
          actions: [
            TextButton(
              child: Text('Tambah'),
              onPressed: () {
                if (newItem.isNotEmpty && newQuantity > 0) {
                  stock[newItem] = newQuantity;
                }
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Tutup'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  void _removeStock(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Hapus Stok Barang'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: stock.keys.map((item) {
              return ListTile(
                title: Text(item),
                trailing: IconButton(
                  icon: Icon(Icons.delete, color: Colors.red),
                  onPressed: () {
                    stock.remove(item);
                    Navigator.of(context).pop();
                  },
                ),
              );
            }).toList(),
          ),
          actions: [
            TextButton(
              child: Text('Tutup'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      selectedIndex: 3,
      controller: controller,
      bodyContent: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'Penyimpanan',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 30),
            ListTile(
              title: Text(
                'Jumlah Barang Tersedia',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              subtitle: Text(
                'Lihat stok barang yang tersedia di gudang',
                style: TextStyle(color: Colors.black),
              ),
              trailing: Icon(Icons.inventory, color: Colors.black),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Detail Stok Barang'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: stock.entries.map((entry) {
                          return ListTile(
                            title: Text('${entry.key}: ${entry.value} pcs'),
                          );
                        }).toList(),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Tutup'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            Divider(color: Colors.grey[0]),
            SizedBox(height: 10),
            ListTile(
              title: Text(
                'Tambah Stok Barang',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              subtitle: Text(
                'Masukkan jumlah stok barang baru',
                style: TextStyle(color: Colors.black),
              ),
              trailing: Icon(Icons.add_box, color: Colors.black),
              onTap: () => _addStock(context),
            ),
            Divider(color: Colors.grey[0]),
            SizedBox(height: 10),
            ListTile(
              title: Text(
                'Hapus Stok Barang',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              subtitle: Text(
                'Hapus barang yang tidak tersedia',
                style: TextStyle(color: Colors.black),
              ),
              trailing: Icon(Icons.delete, color: Colors.black),
              onTap: () => _removeStock(context),
            ),
            Divider(color: Colors.grey[0]),
          ],
        ),
      ),
    );
  }
}
