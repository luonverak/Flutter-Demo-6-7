class OptionData {
  final int id;
  final String title;
  final String subtitle;
  final String icon;

  OptionData({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.icon,
  });
}

final List<OptionData> listOptionData = [
  OptionData(
      id: 1,
      title: 'Address',
      subtitle: 'Phnom Penh City',
      icon: 'asset/icon/location.png'),
  OptionData(
      id: 2,
      title: 'Privacy',
      subtitle: 'System permision change',
      icon: 'asset/icon/security.png'),
  OptionData(
      id: 3,
      title: 'Notication',
      subtitle: 'Phnom Penh City',
      icon: 'asset/icon/push-notification.png'),
  OptionData(
      id: 4,
      title: 'Support',
      subtitle: 'System permision change',
      icon: 'asset/icon/headphone.png'),
];
