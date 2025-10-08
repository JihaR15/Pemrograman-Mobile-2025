import 'package:flutter/material.dart';
import 'package:layout_flutter/models/item.dart';
import 'package:layout_flutter/widgets/grid_view_style_widget.dart';
import 'package:layout_flutter/widgets/list_view_style_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isGridView = false;

  final List<Item> items = [
    Item(
      name: 'Politeknik Negeri Malang',
      location:
          'Jl. Soekarno Hatta No.9, Jatimulyo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65141',
      description:
          'Politeknik Negeri Malang (Polinema) adalah salah satu perguruan tinggi vokasi terkemuka di Indonesia yang berlokasi di Kota Malang. Polinema menawarkan berbagai program studi yang berfokus pada pendidikan teknik dan profesional, serta memiliki fasilitas lengkap untuk mendukung proses belajar mengajar. Kampus ini dikenal dengan lingkungan yang nyaman dan suasana akademik yang kondusif bagi mahasiswa. \n\nNama: Jiha Ramdhan\nNIM: 2341720043',
      imageUrl: 'images/polinema.png',
      star: 4.7,
    ),
    Item(
      name: 'Universitas Brawijaya',
      location:
          'Jl. Veteran No.10-11, Ketawanggede, Kec. Lowokwaru, Kota Malang, Jawa Timur 65145',
      description:
          'Universitas Brawijaya adalah perguruan tinggi negeri di Indonesia yang berdiri pada tahun 1963 di Kota Malang, Jawa Timur melalui Ketetapan Menteri Pendidikan dan Ilmu Pengetahuan no.1 tanggal 5 Januari 1963. Tanggal tersebut kemudian ditetapkan sebagai Dies Natalis UB. \n\nNama: Jiha Ramdhan\nNIM: 2341720043',
      imageUrl: 'images/brawijaya.png',
      star: 4.7,
    ),
    Item(
      name: 'Institut Teknologi Bandung',
      location:
          'Jl. Ganesha No.10, Lb. Siliwangi, Coblong, Kota Bandung, Jawa Barat 40132',
      description:
          'Institut Teknologi Bandung (ITB) adalah perguruan tinggi negeri yang fokus pada bidang sains, teknologi, dan seni. Didirikan pada tahun 1959, ITB dikenal sebagai salah satu universitas terbaik di Indonesia dengan berbagai penelitian inovatif. \n\nNama: Jiha Ramdhan\nNIM: 2341720043',
      imageUrl: 'images/itb.png',
      star: 4.8,
    ),
    Item(
      name: 'Universitas Indonesia',
      location: 'Kampus UI, Depok, Jawa Barat 16424',
      description:
          'Universitas Indonesia (UI) merupakan universitas tertua di Indonesia yang memiliki reputasi nasional dan internasional. UI menyediakan pendidikan unggul di berbagai bidang, termasuk teknik, kedokteran, hukum, dan ekonomi. \n\nNama: Jiha Ramdhan\nNIM: 2341720043',
      imageUrl: 'images/ui.png',
      star: 4.9,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Flutter layout - Campus List"),
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        actionsPadding: EdgeInsets.only(right: 16),
        actions: [_modeToggleButton()],
      ),
      body: isGridView
          ? GridViewStyleWidget(items: items)
          : ListViewStyleWidget(items: items),
    );
  }

  Widget _modeToggleButton() {
    return IconButton(
      icon: Icon(
        isGridView ? Icons.view_list_rounded : Icons.grid_view_rounded,
      ),
      onPressed: () {
        setState(() {
          isGridView = !isGridView;
        });
      },
    );
  }
}
