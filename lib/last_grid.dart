import 'package:flutter/material.dart';

class LastGrid extends StatelessWidget {
  const LastGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 1.0,
              offset: Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 1,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.all(16),
          children: [
            ThirdSectionGridCard(title: 'Easyload', icon: Icons.phone_android),
            ThirdSectionGridCard(
              title: 'Easycash Loan',
              icon: Icons.monetization_on,
            ),
            ThirdSectionGridCard(title: 'Saving Pocket', icon: Icons.savings),
            ThirdSectionGridCard(title: 'Invite & Earn', icon: Icons.group_add),
            ThirdSectionGridCard(title: 'Raast Payment', icon: Icons.send),
            ThirdSectionGridCard(title: 'Mini App', icon: Icons.apps),
            ThirdSectionGridCard(title: 'Savings', icon: Icons.account_balance),
            ThirdSectionGridCard(
              title: 'Buy Now Pay Later',
              icon: Icons.shopping_bag,
            ),
            // Insurance
            ThirdSectionGridCard(title: 'Bill Pay', icon: Icons.receipt),
            // Donations
            ThirdSectionGridCard(
              title: 'Donations',
              icon: Icons.volunteer_activism,
            ),
            ThirdSectionGridCard(title: 'Games', icon: Icons.videogame_asset),
            ThirdSectionGridCard(title: 'More', icon: Icons.more_horiz),
            // Rs.l Game
            // See All
          ],
        ),
      ),
    );
  }
}

class ThirdSectionGridCard extends StatelessWidget {
  const ThirdSectionGridCard({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Color.fromRGBO(0, 187, 89, 1)),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
