import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:templete_application/feature/widgets/text.dart';
import 'package:templete_application/gen/assets.gen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Assets.orechen.image(
                      width: 50,
                      height: 50,
                    ),
                    const SizedBox(height: 10),
                    AppText.regular(
                        text: '俺ちゃん',
                        color: Colors.black,
                        fontSize: 18,
                        textAlign: TextAlign.center),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SettingsItem(
                    icon: Icons.privacy_tip, title: 'プライバシーポリシー', onTap: () {}),
                SettingsItem(
                  icon: Icons.description,
                  title: '利用規約',
                  onTap: () {
                    debugPrint('call');
                  },
                ),
                SettingsItem(
                  icon: Icons.person,
                  title: '個人設定',
                  onTap: () {},
                ),
                SettingsItem(
                  icon: Icons.language,
                  title: '対応言語の変更',
                  onTap: () {},
                ),
                SettingsItem(
                  icon: Icons.info,
                  title: 'アプリのバージョン情報',
                  onTap: () {},
                ),
                SettingsItem(
                  icon: Icons.copyright,
                  title: 'ライセンス情報',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SettingsItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  const SettingsItem({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        trailing: Icon(Icons.chevron_right),
        onTap: onTap ??
            () {
              debugPrint('$title がタップされました');
            },
      ),
    );
  }
}

class SettingsRouteData extends GoRouteData {
  const SettingsRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingsScreen();
  }
}
