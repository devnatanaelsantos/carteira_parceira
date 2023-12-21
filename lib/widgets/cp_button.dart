import 'package:flutter/material.dart';
import 'cp_colors.dart';

class CpButton extends StatelessWidget {
  const CpButton({
    Key? key,
    required this.descricao,
  }) : super(key: key);

  final String descricao;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 250,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(AppColors.secundarycolor),
        ),
        child: Text(
          descricao,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
