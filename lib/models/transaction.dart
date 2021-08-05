import 'package:flutter/foundation.dart';

class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final String mATNR;
  final String mAKTX;
  final String mTART;
  final String mEINS;
  final String iD;


  Transaction({
    @required this.id,
    @required this.title,
    @required this.amount,
    @required this.date,
    this.mATNR,
    this.mAKTX,
    this.mTART,
    this.mEINS,
    this.iD,
  });
}
