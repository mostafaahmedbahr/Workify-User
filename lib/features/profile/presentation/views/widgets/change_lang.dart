import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:workify_user/lang/locale_keys.dart';

import '../../../../../core/utils/app_images/jpg_images.dart';

class ChangeLang extends StatefulWidget {
  const ChangeLang({super.key});

  @override
  State<ChangeLang> createState() => _ImageTextDropdownState();
}

class _ImageTextDropdownState extends State<ChangeLang> {
  String? selectedValue;
  final List<Map<String, dynamic>> items = [
    {
      'text': LocaleKeys.english.tr(),
      'image':  JpgImages.english,
    },
    {
      'text':  LocaleKeys.arabic.tr(),
      'image': JpgImages.arabic,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedValue,
      hint:
      true ?  Row(
        children: [
          Image.asset(
            items.first['image'],
            width: 24,
            height: 24,
          ),
          const SizedBox(width: 10),
          Text(items.first['text']),
        ],
      ):   Row(
        children: [
          Image.asset(
            items.last['image'],
            width: 24,
            height: 24,
          ),
          const SizedBox(width: 10),
          Text(  items.last['text']),
        ],
      ),
      items: items.map((item) {
        return DropdownMenuItem<String>(
          value: item['text'],
          child: Row(
            children: [
              Image.asset(
                item['image'],
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 10),
              Text(item['text']),
            ],
          ),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          selectedValue = value;
        });
      },
    );
  }
}