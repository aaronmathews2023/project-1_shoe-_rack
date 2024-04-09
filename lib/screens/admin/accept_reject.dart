import 'package:flutter/material.dart';
import 'package:shoerack/screens/admin/accept_order.dart';
import 'package:shoerack/screens/admin/admin_order.dart';
import 'package:shoerack/screens/admin/decline_order.dart';
import 'package:shoerack/screens/admin/order.dart';

class AdminNofication extends StatefulWidget {
  const AdminNofication({super.key});

  @override
  State<AdminNofication> createState() => _AdminNoficationState();
}

class _AdminNoficationState extends State<AdminNofication>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
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
        title: const Text('Product Sales'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Order'),
            Tab(text: 'Accept'),
            Tab(text: 'Decline'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Order(),
          OrderAccept(),
         OrderDecline()
        ],
      ),
    );
  }
}
