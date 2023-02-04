
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  UserProfile();
  List<MenuRowData> firstMenuRow =[
    MenuRowData(Icons.favorite_outline, 'Избранное'),
    MenuRowData(Icons.call, 'Звонки'),
    MenuRowData(Icons.computer, 'Устройства'),
    MenuRowData(Icons.folder, 'Папка с чатами'),
  ];
  List<MenuRowData> secondMenuRow =[
    MenuRowData(Icons.notifications, 'Уведомления'),
    MenuRowData(Icons.privacy_tip, 'Конфицедиальность'),
    MenuRowData(Icons.date_range, 'Данные и память'),
    MenuRowData(Icons.brush, 'Оформление'),
    MenuRowData(Icons.language, 'Язык'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Настройки'),

      ),

      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _UserInfo(),
            SizedBox(height: 30,),
            _MenuWidget(menuRow: firstMenuRow,),
            SizedBox(height: 30,),
            _MenuWidget(menuRow: secondMenuRow,)
          ],
        ),
      ),
    );
  }
}

class MenuRowData{
  final IconData icon;
  final String text;

  MenuRowData(this.icon, this.text);
}
class _MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuRow;
  const _MenuWidget({Key? key, required this.menuRow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,

      child: Column(
        children: menuRow.map((data) => _MenuWidgetRow(data: data)).toList(),
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final MenuRowData data;
  const _MenuWidgetRow({
    Key? key,
  required this.data,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,

        children: [
          Icon(data.icon),
          SizedBox(width: 15,),
          Expanded(child: Text(data.text)),
          Icon(Icons.chevron_right_sharp)
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 30),
          _AvatarWidget(),
          SizedBox(height: 30),
          _UserNameWidget(),
          SizedBox(height: 10),
          _UserPhoneWidget(),
          SizedBox(height: 10),
          _UserNickNameWidget(),
        ],
      ),
    );
  }
}


class _UserNickNameWidget extends StatelessWidget {
  const _UserNickNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
        '@kasane_jp',
        style: TextStyle(
        color: Colors.grey,
        fontSize: 18,)
    );
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '(tel number)',
      style: TextStyle(
      color: Colors.grey,
      fontSize: 15,)
    );
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Nadya Tr',
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 100,
        child: Placeholder()
    );
  }
}
