import 'package:flutter/material.dart';
import 'package:meuapp/shared/theme/app_theme.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: 230,
          decoration: BoxDecoration(
              color: AppTheme.colors.textEnabled,
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.linked_camera),
                  backgroundColor: AppTheme.colors.background,
                  radius: 30,
                ),
                title: Text("Produto"),
                subtitle: Text("preço"),
              ),
              Text.rich(
                TextSpan(
                  text: "Agora\n",
                  children: [TextSpan(text: "R\$ 67,50")],
                ),
              )
            ],
          )),
    );
  }
}
