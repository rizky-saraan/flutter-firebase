import 'package:flutter/material.dart';

class ItemPageView extends StatelessWidget {
  const ItemPageView(
      {Key? key, this.title, this.content, this.path, this.isLast = false})
      : super(key: key);

  final String? title;
  final String? content;
  final String? path;
  final bool? isLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Image(image: AssetImage(path ?? "")),
          Text(
            title ?? "",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 30),
          Text(
            content ?? "",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 30),
          Visibility(
            visible: isLast ?? false,
            child: Stack(
              children: [
                ActionChip(
                  label: Text(
                    "Login",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  labelStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(16.0),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
