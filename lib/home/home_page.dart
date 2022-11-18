import 'package:erp_employee_self_service/home/account.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee Self Service'),
        actions: const [
          IconButton(onPressed: null, icon: Icon(Icons.more_vert))
        ],
        backgroundColor: const Color.fromRGBO(143, 99, 137, 1),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(230),
          child: Account(),
        ),
      ),
      body: ListView(
        children: <Widget>[
          homeListTile(Icons.calendar_today_rounded, 'Open Enrollment'),
          homeListTile(Icons.account_circle, 'Personal Information'),
          homeListTile(Icons.pin_drop, 'Address/Contact Information'),
          homeListTile(Icons.monetization_on, 'Compensation Information'),
          homeListTile(Icons.receipt_long_rounded, 'Tax Information'),
          homeListTile(Icons.branding_watermark, 'Direct Deposit'),
          homeListTile(Icons.domain_rounded, 'Job Information'),
          homeListTile(Icons.beenhere_rounded, 'Benefits'),
          homeListTile(Icons.child_care_rounded, 'Dependents & Beneficiaries'),
          homeListTile(Icons.light_mode_rounded, 'Vacation Balance'),
          homeListTile(Icons.credit_card_rounded, 'Pay Stubs'),
        ],
      ),
    );
  }

  Widget homeListTile(IconData? icons, String? text) => Card(
        child: ListTile(
          leading: Icon(icons ?? Icons.question_mark_rounded),
          title: Text(text ?? 'Undefined Navigation'),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
        ),
      );
}
