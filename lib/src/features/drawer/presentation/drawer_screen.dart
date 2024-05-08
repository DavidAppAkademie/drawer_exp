import 'package:drawer_exp/src/features/settings/presentation/settings_screen.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.greenAccent,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://ca.slack-edge.com/T044YC3MSLF-U04S160GVMH-353316879748-512"),
                  ),
                  Text(
                    'Angi Petzold',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const Text('angi@web.de'),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profil'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              height: 64,
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // schliesse den Drawer
                Navigator.pop(context);

                // oeffne Settings Screens
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsScreen(),
                    ));
              },
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 181, 235, 209),
      appBar: AppBar(
        title: const Text("Mein Drawer Screen"),
      ),
    );
  }
}
