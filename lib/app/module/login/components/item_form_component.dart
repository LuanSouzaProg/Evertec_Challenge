import 'package:flutter/material.dart';

class ItemFormComponent extends StatefulWidget {
  final TextEditingController controller;
  final bool? needObscureText;
  final String title;

  const ItemFormComponent({
    super.key,
    required this.needObscureText,
    required this.controller,
    required this.title,
  });

  @override
  State<ItemFormComponent> createState() => _ItemFormComponentState();
}

class _ItemFormComponentState extends State<ItemFormComponent> {
  bool _isObscured = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(widget.title),
          ),
          SizedBox(
            height: 45,
            child: TextField(
              controller: widget.controller,
              obscureText: widget.needObscureText == true ? _isObscured : false,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 8,
                ),
                suffixIcon: widget.needObscureText == true
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            _isObscured = !_isObscured;
                          });
                        },
                        icon: Icon(
                          _isObscured ? Icons.visibility : Icons.visibility_off,
                        ),
                      )
                    : null,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      12,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
