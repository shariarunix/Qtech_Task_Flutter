import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QSearchBar extends StatefulWidget implements PreferredSizeWidget {
  const QSearchBar({
    super.key,
    required this.focusNode,
    required this.controller,
    required this.onSortMenuPressed,
  });

  final FocusNode focusNode;
  final TextEditingController controller;
  final VoidCallback onSortMenuPressed;

  @override
  State<QSearchBar> createState() => _QSearchBarState();

  @override
  Size get preferredSize => const Size(double.maxFinite, 96);
}

class _QSearchBarState extends State<QSearchBar> {

  bool _isShowingSortMenu = false;

  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(() {
      setState(() {
        _isShowingSortMenu = widget.focusNode.hasPrimaryFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
        ),
        child: Row(
          children: [
            Expanded(
              child: CupertinoSearchTextField(
                focusNode: widget.focusNode,
                controller: widget.controller,
                placeholder: 'Search Anything...',
                prefixIcon: Padding(
                  padding: EdgeInsets.only(
                    left: 8,
                    right: 4,
                    top: 12,
                    bottom: 8,
                  ),
                  child: Icon(
                    Icons.search,
                  ),
                ),
                style: const TextStyle(fontSize: 16),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(
                    color: CupertinoColors.lightBackgroundGray,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(width: 8),
            AnimatedSize(
              duration: Duration(milliseconds: 150),
              child: _isShowingSortMenu
                  ? IconButton(
                      icon: Icon(Icons.menu_open_rounded),
                      onPressed: () => widget.onSortMenuPressed(),
                    )
                  : SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
