part of '../lib.dart';

// 정보 변경하는 텍스트필드, 버튼
Widget _buildTextFieldWithButton({
  required TextEditingController controller,
  required VoidCallback onPressed,
  required String buttonText,
}) {
  return Row(
    children: [
      Expanded(
        child: TextField(
          controller: controller,
        ),
      ),
      ElevatedButton(
        onPressed: onPressed,
        child: Text(buttonText),
      ),
    ],
  );
}
