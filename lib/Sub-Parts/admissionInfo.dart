import 'package:flutter/material.dart';

Widget admissionInfo() => Column(
      children: [
        const Text(
          'Admission Information',
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
              'Admission Year : ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            Text(
              ' YYYY',
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
              'Faculty Name : ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            Text(
              ' XXXXXXXXXXXX',
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
              'Programme Name : ',
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
              'Specialization : ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            Text(
              ' Data Science',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'PRN : ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            Text(
              ' 103220XXXX',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ],
    );
