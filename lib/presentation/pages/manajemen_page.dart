import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class ManajemenPage extends StatelessWidget {
  final HomeController controller;

  ManajemenPage(this.controller);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      selectedIndex: 1, 
      controller: controller,
      bodyContent: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Manajemen Penjualan',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            _buildWilayahItem(context, 'Bali', 'Penjualan: 150 botol', 'Agen Aktif: 1'),
            _buildWilayahItem(context, 'Jakarta', 'Penjualan: 100 botol', 'Agen Aktif: 1'),
            _buildWilayahItem(context, 'Tangerang', 'Penjualan: 150 botol', 'Agen Aktif: 3'),
            _buildWilayahItem(context, 'Bogor', 'Penjualan: 100 botol', 'Agen Aktif: 1'),
            _buildWilayahItem(context, 'Ngawi', 'Penjualan: 100 botol', 'Agen Tidak Aktif: 1'),
            _buildWilayahItem(context, 'Korea', 'Penjualan: 50 botol', 'Agen Tidak Aktif: 1')
          ],
        ),
      ),
    );
  }

  Widget _buildWilayahItem(BuildContext context, String wilayah, String penjualan, String agenAktif) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.blueGrey[50],
      child: ExpansionTile(
        title: Text(
          wilayah,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        children: <Widget>[
          ListTile(
            title: Text(
              penjualan,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              agenAktif,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
