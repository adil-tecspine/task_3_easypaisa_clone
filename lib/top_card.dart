import 'package:flutter/material.dart';
import 'package:task_3_easypaisa_clone/top_container_first_column.dart';
import 'package:task_3_easypaisa_clone/top_container_second_column.dart';

class TopCard extends StatelessWidget {
  const TopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: const Color.fromARGB(255, 3, 179, 94),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8.0,
                offset: Offset(0, 2),
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(flex: 2, child: TopContainerFirstColumn()),
                TopContainerSecondColumn(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
