import 'package:flutter/material.dart';

import '../../styles/responsive.dart';
import '../my_text.dart';

class CustomInfoDialog extends StatelessWidget {
  final IconData iconData;
  final bool isSuccess;
  final String title;
  final String content;
  final VoidCallback? onPressed;
  final bool isPopScope;

  const CustomInfoDialog({
    Key? key,
    required this.iconData,
    this.isSuccess = false,
    required this.title,
    required this.content,
    this.onPressed,
    this.isPopScope = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: larguraTela(context) * .8,
          child: Card(
            color: Theme.of(context).cardColor.withOpacity(.8),
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: dp20(context) * 2,
                vertical: dp20(context),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    iconData,
                    color: isSuccess ? Colors.green : Colors.red,
                    size: dp30(context) * 2,
                  ),
                  SizedBox(height: dp10(context)),
                  MyText(
                    title,
                    bold: true,
                    alignCenter: true,
                    fontSize: dp18(context),
                  ),
                  SizedBox(height: dp10(context)),
                  MyText(
                    content,
                    fontSize: dp16(context),
                  ),
                  SizedBox(height: dp20(context)),
                  SizedBox(
                    width: larguraTela(context),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black87,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed:
                                onPressed ?? () => Navigator.of(context).pop(),
                            child: MyText(isPopScope ? "Sair" : "OK",
                                color: Colors.white),
                          ),
                        ),
                        if (isPopScope) SizedBox(width: dp10(context)),
                        if (isPopScope)
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey.shade300,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () => Navigator.of(context).pop(),
                              child: const MyText(
                                "Cancelar",
                                color: Colors.black,
                              ),
                            ),
                          ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
