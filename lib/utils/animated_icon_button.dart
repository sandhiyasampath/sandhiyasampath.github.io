import 'package:flutter/material.dart';

class AnimatedIconButton extends StatefulWidget {
  final IconData iconData;
  final VoidCallback onTap;
  const AnimatedIconButton({
    Key? key,
    required this.iconData,
    required this.onTap,
  }) : super(key: key);

  @override
  State<AnimatedIconButton> createState() => _AnimatedIconButtonState();
}

class _AnimatedIconButtonState extends State<AnimatedIconButton> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (val) {
        setState(() {
          isHovering = val;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: isHovering ? Colors.grey.shade300 : Colors.white,
          borderRadius: BorderRadius.circular(
            12.0,
          ),
          border: Border.all(
            color: isHovering ? Colors.grey : Colors.white,
          ),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(
                  widget.iconData,
                  color: Colors.blue,
                  size: 28.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
