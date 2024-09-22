import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: Colors.indigo, // アバター画像のパスを指定
                    ),
                    SizedBox(height: 10),
                    Text(
                      'ユーザー名',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                _buildSettingsItem(Icons.privacy_tip, 'プライバシーポリシー'),
                _buildSettingsItem(Icons.description, '利用規約'),
                _buildSettingsItem(Icons.person, '個人設定'),
                _buildSettingsItem(Icons.language, '対応言語の変更'),
                _buildSettingsItem(Icons.info, 'アプリのバージョン情報'),
                _buildSettingsItem(Icons.copyright, 'ライセンス情報'),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildSettingsItem(IconData icon, String title) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        trailing: Icon(Icons.chevron_right),
        onTap: () {
          // タップ時の処理を追加
          debugPrint('settings call');
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