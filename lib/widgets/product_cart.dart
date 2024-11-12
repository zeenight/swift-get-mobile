
import 'package:flutter/material.dart';
import 'package:swift_get/screens/Productentry_form.dart';
// class ItemHomepage {
  
//   final String name;
//   final IconData icon;

//   ItemHomepage(this.name, this.icon);
// }

// class ItemCard extends StatelessWidget {
//   // Menampilkan kartu dengan ikon dan nama.

//   final ItemHomepage item;

//   const ItemCard(this.item, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       // Menentukan warna latar belakang dari tema aplikasi.
//       color: Theme.of(context).colorScheme.secondary,
//       // Membuat sudut kartu melengkung.
//       borderRadius: BorderRadius.circular(12),

//       child: InkWell(
//         // Aksi ketika kartu ditekan.
//         onTap: () {
//           // Menampilkan pesan SnackBar saat kartu ditekan.
//           ScaffoldMessenger.of(context)
//             ..hideCurrentSnackBar()
//             ..showSnackBar(SnackBar(
//                 content: Text("Kamu telah menekan tombol ${item.name}!")));
//           if (item.name == "Tambah Mood") {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => ProductentryFormPage()),
//             );
//             // TODO: Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup ProductentryFormPage.
//           }
//         },
//         // Container untuk menyimpan Icon dan Text
//         child: Container(
//           padding: const EdgeInsets.all(8),
//           child: Center(
//             child: Column(
//               // Menyusun ikon dan teks di tengah kartu.
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(
//                   item.icon,
//                   color: Colors.white,
//                   size: 30.0,
//                 ),
//                 const Padding(padding: EdgeInsets.all(3)),
//                 Text(
//                   item.name,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(color: Colors.white),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


class ItemHomepage {
  final String name;
  final IconData icon;

  ItemHomepage(this.name, this.icon);
}

class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    // Tentukan warna latar belakang berdasarkan nama tombol
    Color backgroundColor;
    switch (item.name) {
      case "Lihat Daftar Produk":
        backgroundColor = Colors.blue;
        break;
      case "Tambah Produk":
        backgroundColor = Colors.green;
        break;
      case "Logout":
        backgroundColor = Colors.red;
        break;
      default:
        backgroundColor = Colors.grey;
    }

    return Material(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {
          // Tampilkan SnackBar yang sesuai berdasarkan nama tombol
          String snackBarText;
          switch (item.name) {
            case "Lihat Daftar Produk":
              snackBarText = "Kamu telah menekan tombol Lihat Daftar Produk";
              break;
            case "Tambah Produk":
              snackBarText = "Kamu telah menekan tombol Tambah Produk";
              break;
            case "Logout":
              snackBarText = "Kamu telah menekan tombol Logout";
              break;
            default:
              snackBarText = "Kamu telah menekan tombol";
          }
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(content: Text(snackBarText)));
              if (item.name == "Tambah Product") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductentryFormPage()),
            );
            // TODO: Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup ProductentryFormPage.
          }
    
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
