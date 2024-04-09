import 'package:flutter/material.dart';
import 'package:shoerack/screens/user_side/Unsucessfull.dart';
import 'package:shoerack/screens/user_side/order_sucessful.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orders'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Sucessfull Order'),
            Tab(text: 'Unsucessfull Order'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          SucessfulOrder(),
          Unsucessfull(),
        ],
      ),
    );
  }
}
