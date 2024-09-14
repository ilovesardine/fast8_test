import 'package:flutter/material.dart';
import 'package:tech_test/core/res/colors.dart';
import 'package:tech_test/core/widgets/text/h1_text.dart';
import 'package:tech_test/core/widgets/text/normal_text.dart';
import 'package:tech_test/core/widgets/text/title_text.dart';

class HomeTopBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeTopBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  String greeting() {
    final currentHour = DateTime.now().hour;

    if (currentHour >= 18 && currentHour <= 5) {
      return 'Selamat Malam';
    } else if (currentHour > 5 && currentHour <= 11) {
      return 'Selamat Pagi';
    } else {
      return 'Selamat Siang';
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.brand,
      title: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            _renderGreeting(),
            const Spacer(),
            _renderNotification(),
            const SizedBox(width: 8),
            _renderAvatar(),
          ],
        ),
      ),
    );
  }

  Widget _renderNotification() {
    return IconButton(
      icon: Badge.count(
        count: 0,
        child: const Icon(
          Icons.notifications_outlined,
          color: Colors.white,
          size: 30,
        ),
      ),
      onPressed: () {},
    );
  }

  Widget _renderAvatar() {
    return Container(
      width: 36,
      height: 36,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(18),
      ),
      child: const Center(
        child: H1Text(
          text: 'W',
          brightness: Brightness.dark,
        ),
      ),
    );
  }

  Widget _renderGreeting() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NormalText(
          text: greeting(),
          brightness: Brightness.dark,
        ),
        const TitleText(
          text: 'Wanda',
          brightness: Brightness.dark,
          isBold: true,
        )
      ],
    );
  }
}
