import 'package:flutter/material.dart';
import 'package:vakinha_burguer_app/app/core/ui/helpers/size_extensions.dart';
import 'package:vakinha_burguer_app/app/core/ui/widgets/delivery_appbar.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppbar(),
      body: Column(
        children: [
          Container(
            width: context.screenWidth,
            height: context.percentHeight(.4),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://www.anamariabrogui.com.br/assets/uploads/receitas/fotos/usuario-1682-52acab79d88efd805e6a341697e6aecb.jpg"),
                    fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}
