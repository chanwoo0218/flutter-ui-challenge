import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const Button({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // 박스 꾸미기
        color: bgColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        // 커스터마이징 된 위젯이므로 이제 더 이상 const가 아님. const를 지워줌.
        // 만약 textcolor와 text가 각각 값이 지정이 된 상태라면 padding 앞에 const를 붙임.
        padding: const EdgeInsets.symmetric(
          // 박스의 좌우를 각각 15, 위아래를 40 남김
          vertical: 20,
          horizontal: 50,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
