import 'package:flutter/material.dart';

Widget personalInfo() => Column(
      children: [
        const Text(
          'Personal Information',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Date of Birth : ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            Text(
              ' DD / MM / YYYY',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Nationality : ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            Text(
              ' Indian',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Gender : ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            Text(
              ' Male',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Blood Group : ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            Text(
              ' B+ve',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
            )
          ],
        ),
      ],
    );
