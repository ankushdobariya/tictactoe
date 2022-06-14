import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class datasize
{
  static double? width,height,btheight,stheight,appheight,bodyheight;

  datasize(BuildContext context)
  {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    stheight=MediaQuery.of(context).padding.top;
    btheight=MediaQuery.of(context).padding.bottom;
    appheight=kToolbarHeight;

    bodyheight=height!-stheight!-btheight!-appheight!;

  }
}