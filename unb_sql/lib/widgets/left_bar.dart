import 'package:flutter/material.dart';
import 'package:unb_sql/functions.dart';
import 'package:unb_sql/widgets/left_bar_item.dart';
import 'package:unb_sql/widgets/left_bar_item_title.dart';

class LeftBar extends StatelessWidget {
  const LeftBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size leftbarSize = getLeftBarSize(context);
    List<Widget> listServers = [
      const LeftBarItem(text: "Server 1", icon: Icons.cloud),
      const LeftBarItem(text: "Server 2", icon: Icons.cloud),
      const LeftBarItem(text: "Server 3", icon: Icons.cloud),
    ];
    List<Widget> listDatabases = [
      const LeftBarItem(text: "Base de Dado 1", icon: Icons.storage_rounded),
      const LeftBarItem(text: "Base de Dado 2", icon: Icons.storage_rounded),
      const LeftBarItem(
        text: "Base de Dado 3",
        icon: Icons.storage_rounded,
      )
    ];
    List<Widget> listTables = [
      const LeftBarItem(text: "Tabela 1", icon: Icons.table_chart_outlined),
      const LeftBarItem(text: "Tabela 2", icon: Icons.table_chart_outlined),
      const LeftBarItem(text: "Tabela 3", icon: Icons.table_chart_outlined),
    ];

    return Column(
      children: [
        SizedBox(
          width: leftbarSize.width,
          height: leftbarSize.height,
          child: ListView(
            children: [
              LeftBarTitle(
                leftbarSize: leftbarSize,
                title: "Servers",
              ),
              const SizedBox(height: 5),
              ...listServers,
              const SizedBox(height: 20),
              LeftBarTitle(
                leftbarSize: leftbarSize,
                title: "Base de Dados",
              ),
              const SizedBox(height: 5),
              ...listDatabases,
              const SizedBox(height: 20),
              LeftBarTitle(
                leftbarSize: leftbarSize,
                title: "Tabelas",
              ),
              const SizedBox(height: 5),
              ...listTables,
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}
