import 'package:flutter/material.dart';

class AbaAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AbaAppBar({Key? key, this.title = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        color: const Color(0xFF02344F),
        child: SafeArea(
          child: Row(
            children: [
              const Expanded(
                child: Row(
                  children: [],
                ),
              ),
              IconButton(
                icon: const Icon(Icons.notifications_on_outlined,
                    color: Colors.white),
                onPressed: () {
                  // Add your onPressed code here!
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Add your onPressed code here!
                },
              ),
            ],
          ),
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
