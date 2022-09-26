// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color cor1, cor2;
  final String textBut;
  final String? icBut;

  const Button({
    Key? key,
    required this.cor1,
    required this.cor2,
    required this.textBut,
    this.icBut,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: cor1,
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          constraints: const BoxConstraints(
            maxHeight: 35,
            maxWidth: 300,
          ),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icBut!.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                  child: Image.asset(icBut!),
                ),
              Text(
                textBut,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  color: cor2,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
