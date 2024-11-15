import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController controller;

  HomePage(this.controller);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      selectedIndex: 0, 
      controller: controller,
      bodyContent: Center(
        child: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            _buildSection(
              title: 'Profil Pengguna',
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildStatRow('Nama:', 'Meisya Margareta Yovita'),
                  _buildStatRow('Status:', 'Agen Aktif'),
                  _buildStatRow('No. Telepon:', '089693536587'),
                  _buildStatRow('Email:', 'meisyamei441@gmail.com'),
                  _buildStatRow('Zona Operasional:', 'Tangerang'),
                ],
              ),
            ),
            _buildSection(
              title: 'Ringkasan Penjualan',
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildStatRow('Total Penjualan:', 'Rp. 10.000.000'),
                  _buildStatRow('Produk Terjual:', '950 item'),
                  _buildStatRow('Pendapatan:', 'Rp. 8.000.000'),
                  _buildStatRow('Produk Tersisa:', '200 item'),
                ],
              ),
            ),
            _buildSection(
              title: 'Status Pengiriman',
              content: Text(
                'Pengiriman dalam perjalanan - 300  item',
                style: TextStyle(color: Colors.black),
              ),
            ),
            _buildSection(
              title: 'Daftar Agen',
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildStatRow('Agen Aktif:', '6 agen'),
                  _buildStatRow('Agen Tidak Aktif:', '2 agen'),
                ],
              ),
            ),
            _buildSection(
              title: 'Riwayat Transaksi',
              content: Text(
                'Transaksi terakhir: Pembelian 100 item oleh Agen 1',
                style: TextStyle(color: Colors.black),
              ),
            ),
            _buildSection(
              title: 'Target dan Pencapaian',
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildStatRow('Target Penjualan:', 'Rp. 20.000.000'),
                  _buildStatRow('Pencapaian:', 'Rp. 10.000.000'),
                ],
              ),
            ),
            _buildSection(
              title: 'Tugas / To-Do List',
              content: Text(
                '1. Follow-up agen A1\n2. Periksa status pengiriman ',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({required String title, required Widget content}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(159, 32, 235, 254), 
          borderRadius: BorderRadius.circular(15.0), 
        ),  
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            content,
          ],
        ),
      ),
    );
  }

  Widget _buildStatRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
