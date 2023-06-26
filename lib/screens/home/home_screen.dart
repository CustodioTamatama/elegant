import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../styles/my_colors.dart';
import '../../styles/responsive.dart';
import '../../widgets/home/card_especialistas_home.dart';
import '../../widgets/home/home_modal_bottom_sheet.dart';
import '../../widgets/home/preco_list_view.dart';
import '../../widgets/home/tratamento_list_view.dart';
import '../../widgets/my_text.dart';
import '../../widgets/my_text_form_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(
            left: dp20(context),
            top: dp20(context) * 3,
            right: dp20(context),
            bottom: dp30(context) * 2,
          ),
          children: [
            Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: MyTextFormField(
                color: Colors.white,
                prefixIcon: IconButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/SugeridosScreen'),
                  icon: const Icon(
                    Icons.search_outlined,
                    color: MyColors.primaryColor,
                  ),
                ),
                hintText: 'Pesquisar serviço ou estabelecimento',
                hintStyle: const TextStyle(
                  color: MyColors.primaryColor,
                ),
                //suffixIcon:,
                suffixIconColor: MyColors.primaryColor,
                style: const TextStyle(color: MyColors.primaryColor),
              ),
            ),
            SizedBox(height: dp25(context)),
            const MyText('Filtrar por:'),
            SizedBox(height: dp10(context)),
            Container(
              width: larguraTela(context),
              height: 40,
              color: Colors.transparent,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  HomeModalBottomSheet(
                    children: ListView(),
                    height: larguraTela(context),
                    child: const MyText('Endereço'),
                  ),
                  SizedBox(width: dp10(context)),
                  HomeModalBottomSheet(
                    children: const TratamentoListView(),
                    height: larguraTela(context),
                    child: const MyText('Tratamento'),
                  ),
                  SizedBox(width: dp10(context)),
                  HomeModalBottomSheet(
                    children: const PrecoColumn(),
                    height: larguraTela(context),
                    child: const MyText('Preço'),
                  ),
                ],
              ),
            ),
            SizedBox(height: dp25(context)),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/VerMaisScreen'),
              child: const ContainerEspecialistas(),
            ),
            SizedBox(height: dp20(context)),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/VerMaisScreen'),
              child: const ContainerEspecialistas(),
            ),
            SizedBox(height: dp20(context)),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/VerMaisScreen'),
              child: const ContainerEspecialistas(),
            ),
            SizedBox(height: dp20(context)),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/VerMaisScreen'),
              child: const ContainerEspecialistas(),
            ),
            SizedBox(height: dp20(context)),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/VerMaisScreen'),
              child: const ContainerEspecialistas(),
            ),
            SizedBox(height: dp20(context)),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/VerMaisScreen'),
              child: const ContainerEspecialistas(),
            ),
            SizedBox(height: dp20(context)),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/VerMaisScreen'),
              child: const ContainerEspecialistas(),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfService {
  final String? profName;
  final List<String>? services;

  ProfService({required this.profName, required this.services});

  factory ProfService.fromQuerySnapshot(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return ProfService(
      profName: data['profissional'],
      services: List<String>.from(data['servico_tipo'].map((e) => e)),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'profissional': profName,
      'servico_tipo': services,
    };
  }

  @override
  String toString() {
    return 'NOME: $profName\nSERVICOS: $services';
  }
}
