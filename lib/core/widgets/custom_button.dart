import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.textRouting,
    this.height,
    this.width,
  });
  final String title;
  final String textRouting;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
            // border: Border.all(color: Color.alphaBlend(const Color(0xff6B5BA2),Color(0xffB7A1FF)),),
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(colors: [
                Color(0xff6B5BA2),
                Color(0xffB7A1FF),
                Color(0xff6B5BA2),
                Color(0xffAD96FC),
              ])),
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.06,
          child: Center(
            child: Text(title, style: const TextStyle(fontSize: 20)),
          )),
    );
  }
}
