import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;

  const MessageFieldBox({
    super.key,
    required this.onValue,
  });

  @override
  Widget build(BuildContext context) {
    final textControler = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputborder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final inputDecoration = InputDecoration(
      enabledBorder: outlineInputborder,
      focusedBorder: outlineInputborder,
      filled: true,
      hintText: 'End your message with a "?"',
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          final textValue = textControler.text;
          
          textControler.clear();
          onValue(textValue);
        },
      ),
    );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textControler,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        textControler.clear();
        focusNode.requestFocus();
        onValue(value);
      },
    );
  }
}
