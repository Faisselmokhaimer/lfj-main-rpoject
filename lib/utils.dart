import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';




class Utils{
static Future openEmail({
required dynamic url,

}) =>

_LaunchUrl(url);
static Future  _LaunchUrl(dynamic url)async{
  if(await canLaunchUrl(url)) {
await launchUrl(url);

  }
}

static sendEmail({required dynamic toEmail,required dynamic subject})async{
  final url='mailto:$toEmail?subject=${Uri.encodeFull(subject)}';



  await _LaunchUrl(url);




}

}