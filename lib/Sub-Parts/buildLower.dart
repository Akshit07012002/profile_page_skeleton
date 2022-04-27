import 'package:flutter/material.dart';
import 'personalInfo.dart';
import 'admissionInfo.dart';

Widget buildLower() => Container(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 14,
            ),
            const Text(
              'FirstName LastName',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            personalInfo(),
            const SizedBox(
              height: 24,
            ),
            Container(
              color: Colors.black,
              //margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              padding: const EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
            ),
            const SizedBox(
              height: 24,
            ),
            admissionInfo(),
            const SizedBox(
              height: 24,
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              ' THIS IS A DEMO UI LAYOUT APP ',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              ' contains no animations ',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 24,
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
