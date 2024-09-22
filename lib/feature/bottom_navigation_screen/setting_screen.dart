import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:templete_application/feature/state/locale_notifier.dart';
import 'package:templete_application/feature/widgets/text.dart';
import 'package:templete_application/gen/assets.gen.dart';
import 'package:templete_application/gen/strings.g.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);

    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(localeNotifierProvider.notifier).changeLocale(),
        child: const Icon(Icons.language),
      ),
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
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SettingsItem(
                  icon: Icons.privacy_tip,
                  title: t.mainScreen.privacy_tip,
                  onTap: () {},
                ),
                SettingsItem(
                  icon: Icons.description,
                  title: t.mainScreen.description,
                  onTap: () {
                    debugPrint('call');
                  },
                ),
                SettingsItem(
                  icon: Icons.person,
                  title: t.mainScreen.personal,
                  onTap: () {},
                ),
                SettingsItem(
                  icon: Icons.language,
                  title: t.mainScreen.language,
                  onTap: () {},
                ),
                SettingsItem(
                  icon: Icons.info,
                  title: t.mainScreen.info,
                  onTap: () {},
                ),
                SettingsItem(
                  icon: Icons.copyright,
                  title: t.mainScreen.copyright,
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
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        trailing: const Icon(Icons.chevron_right),
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
