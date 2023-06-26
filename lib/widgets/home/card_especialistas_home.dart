import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../shared/assets_files.dart';
import '../../styles/responsive.dart';

class ListViewEspecialistas extends StatelessWidget {
  const ListViewEspecialistas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: larguraTela(context),
      height: alturaTela(context),
      child: ListView(
        //scrollDirection: Axis.horizontal,
        children: [
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed('/VerMaisScreen'),
            child: const ContainerEspecialistas(),
          ),
          SizedBox(height: dp20(context)),
          GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/VerMaisScreen'),
              child: const ContainerEspecialistas()),
          SizedBox(height: dp20(context)),
          GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/VerMaisScreen'),
              child: const ContainerEspecialistas()),
          SizedBox(height: dp20(context)),
          GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/VerMaisScreen'),
              child: const ContainerEspecialistas()),
          SizedBox(height: dp20(context)),
          GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/VerMaisScreen'),
              child: const ContainerEspecialistas()),
          SizedBox(height: dp20(context)),
          GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/VerMaisScreen'),
              child: const ContainerEspecialistas()),
          SizedBox(height: dp20(context)),
          GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/VerMaisScreen'),
              child: const ContainerEspecialistas()),
        ],
      ),
    );
  }
}

class ContainerEspecialistas extends StatelessWidget {
  const ContainerEspecialistas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: larguraTela(context) / 1.5,
      decoration: BoxDecoration(
          //color: MyColors.primaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //width: larguraTela(context) / 1.5,
            height: larguraTela(context) / 2.5,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                image: DecorationImage(
                    image: AssetImage(AssetFiles.unhas), fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Luisa Silva',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontSize: dp20(context),
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Avenida Marginal, 805/6, Maputo (triunfo)',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: dp16(context),
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                Icon(Iconsax.star1, color: Colors.yellow, size: dp20(context)),
                Icon(Iconsax.star1, color: Colors.yellow, size: dp20(context)),
                Icon(Iconsax.star1, color: Colors.yellow, size: dp20(context)),
                Icon(Iconsax.star1, color: Colors.yellow, size: dp20(context)),
                Icon(Iconsax.star1, size: dp20(context)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
