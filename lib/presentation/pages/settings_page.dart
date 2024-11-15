import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class SettingsPage extends StatelessWidget {
  final HomeController controller;

  SettingsPage(this.controller);

  void _showWhatsAppDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Hubungi Kami'),
          content: Text('Nomor WhatsApp: +62 896 9353 6587'),
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
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      selectedIndex: 4,
      controller: controller,
      bodyContent: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'Pengaturan',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 30),
            ListTile(
              title: Text(
                'Bahasa',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              subtitle: Text(
                'Ubah bahasa aplikasi',
                style: TextStyle(color: Colors.black),
              ),
              trailing: Icon(Icons.language, color: Colors.black),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Pilih Bahasa'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text('Bahasa Indonesia'),
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          ListTile(
                            title: Text('English'),
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            Divider(color: Colors.grey[0]),
            SizedBox(height: 10),
            ListTile(
              title: Text(
                'Hubungi Kami',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              subtitle: Text(
                'Feedback WhatsApp',
                style: TextStyle(color: Colors.black),
              ),
              trailing: Icon(Icons.help_outline, color: Colors.black),
              onTap: () => _showWhatsAppDialog(context),
            ),
            Divider(color: Colors.grey[0]),
            SizedBox(height: 10),
            ListTile(
              title: Text(
                'Tentang Aplikasi',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              subtitle: Text(
                'Versi 1.0.0',
                style: TextStyle(color: Colors.black),
              ),
              trailing: Icon(Icons.info_outline, color: Colors.black),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Tentang Aplikasi'),
                      content: Text(
                        'Aplikasi Distribusi Agen\nVersi: 1.0.0\nPengembang: Nama Pengembang',
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
          ],
        ),
      ),
    );
  }
}
