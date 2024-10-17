import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget imageSection = Container(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: 300,
        height: 200,
        child: Image.asset(
          'assets/images/foto_wisata.jpg', 
          fit: BoxFit.cover, 
        ),
      ),
    );

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Coban Rondo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    // Langkah 1
    Column buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    // Langkah 2
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildButtonColumn(color, Icons.call, 'CALL'),
        buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // Langkah 3
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Jika sedang berkunjung ke kawasan Malang atau kota wisata Batu,' 
        ' maka jangan lupa mampir ke Wisata Coban Rondo. Coban Rondo adalah salah'
        ' satu objek Wisata Air Terjun Di Malang yang sudah populer sejak puluhan tahun lalu.'
        ' Daya tarik utamanya adalah air terjun. Seperti namanya, coban dalam bahasa Jawa berarti'
        ' air terjun. Dulu, wisatawan yang datang ke sini bisa menikmati suasana alam, pegunungan, air terjun,' 
        ' bahkan habitat asli monyet hutan. Saat ini, habitat monyet hutan tersebut sudah hilang. Sebagai gantinya,'
        ' objek wisata ini mengikuti perkembangan zaman, yaitu dengan beberapa fasilitas seru yang bisa dilakukan para'
        ' wisatawan selain menikmati keindahan alam.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Nurhaliza Anindya Putri dan 2241720016',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            imageSection,
            titleSection,   
            buttonSection,
            textSection,   
            const Center(
              child: Text('Nurhaliza Anindya Putri dan 2241720016'),
            ),
          ],
        ),
      ),
    );
  }
}
