import 'package:flutter/material.dart';
import 'package:task_3_easypaisa_clone/third_section_grid_card.dart';

class LastGrid extends StatefulWidget {
  const LastGrid({super.key});

  @override
  State<LastGrid> createState() => _LastGridState();
}

class _LastGridState extends State<LastGrid> {
  late PageController _pageController;
  int _currentPage = 0;

  static const _pages = [FirstGrid(), SecondGrid()];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(); // Adjust as needed
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.orientationOf(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 16.0, 0, 16.0),
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: orientation == Orientation.portrait ? 250 : 210,
              child: PageView.builder(
                controller: _pageController,

                itemCount: 2,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) => _pages[index],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_pages.length, (index) {
                return Container(
                  width: index == _currentPage ? 8.0 : 6.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index
                        ? const Color.fromRGBO(0, 187, 89, 1)
                        : Colors.grey,
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstGrid extends StatelessWidget {
  const FirstGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.orientationOf(context);
    return GridView.count(
      // portrait: 4, landscape: 8
      crossAxisCount: orientation == Orientation.portrait ? 4 : 6,
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

        ThirdSectionGridCard(title: 'Bill Pay', icon: Icons.receipt),

        ThirdSectionGridCard(
          title: 'Donations',
          icon: Icons.volunteer_activism,
        ),
        ThirdSectionGridCard(title: 'Games', icon: Icons.videogame_asset),
        ThirdSectionGridCard(title: 'More', icon: Icons.more_horiz),
      ],
    );
  }
}

class SecondGrid extends StatelessWidget {
  const SecondGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.orientationOf(context);

    return GridView.count(
      crossAxisCount: orientation == Orientation.portrait ? 4 : 6,
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

        ThirdSectionGridCard(title: 'Bill Pay', icon: Icons.receipt),

        ThirdSectionGridCard(
          title: 'Donations',
          icon: Icons.volunteer_activism,
        ),
        ThirdSectionGridCard(title: 'Games', icon: Icons.videogame_asset),
        ThirdSectionGridCard(title: 'More', icon: Icons.more_horiz),
      ],
    );
  }
}
