import 'package:flutter/material.dart';

import '../../styles/my_colors.dart';
import '../../styles/responsive.dart';

class MensagensInputField extends StatelessWidget {
  const MensagensInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 32,
            color: Colors.white,
          ),
        ],
      ),
      child: SafeArea(
          child: Row(
        children: [
          IconButton(
            onPressed: () async {
              return showModalBottomSheet(
                  elevation: dp20(context),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: larguraTela(context) / 4,
                    );
                  });
            },
            icon: const Icon(
              Icons.mic,
              color: MyColors.onPrimaryColor,
            ),
          ),
          SizedBox(width: dp20(context)),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 22.5),
              decoration: BoxDecoration(
                color: MyColors.primaryColor.withOpacity(0.05),
                borderRadius: BorderRadius.circular(40),
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.sentiment_satisfied_alt_outlined,
                    color: MyColors.primaryColor,
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Digite a mensagem',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.attach_file,
                    color: MyColors.primaryColor,
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.camera_alt_outlined,
                    color: MyColors.primaryColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
