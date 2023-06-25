import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../utils/custom_text_fonts.dart';

class DoctorEmergenciesPreview extends StatefulWidget {
  const DoctorEmergenciesPreview({super.key});

  @override
  State<DoctorEmergenciesPreview> createState() => _DoctorEmergenciesPreviewState();
}

class _DoctorEmergenciesPreviewState extends State<DoctorEmergenciesPreview> {
  final myCustomTextFonts =   MyCustomTextFonts();
  @override
  Widget build(BuildContext context) {
    double myWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Colors.red[800],
        child: Column(
          children: [
            SizedBox(height: 12.w,),
            Container(
              padding: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                  color: Colors.red[600],
                  borderRadius: BorderRadius.circular(40.w),
                border: Border(
                  top: BorderSide(
                      color: Colors.white70
                  ),
                  bottom: BorderSide(
                      color: Colors.white70
                  ),
                  right: BorderSide(
                      color: Colors.white70
                  ),
                  left: BorderSide(
                      color: Colors.white70
                  ),
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(6.w),
                decoration: BoxDecoration(
                    color: Colors.red[400],
                    borderRadius: BorderRadius.circular(40.w),
                  border: Border(
                    top: BorderSide(
                        color: Colors.white70
                    ),
                    bottom: BorderSide(
                        color: Colors.white70
                    ),
                    right: BorderSide(
                        color: Colors.white70
                    ),
                    left: BorderSide(
                        color: Colors.white70
                    ),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(4.w),
                  decoration: BoxDecoration(
                    color: Colors.red[200],
                    borderRadius: BorderRadius.circular(40.w),
                    border: Border(
                      top: BorderSide(
                          color: Colors.white70
                      ),
                      bottom: BorderSide(
                          color: Colors.white70
                      ),
                      right: BorderSide(
                          color: Colors.white70
                      ),
                      left: BorderSide(
                          color: Colors.white70
                      ),
                    ),
                  ),
                  child: CircleAvatar(
                      backgroundColor: Colors.red[100],
                      radius: 22.3.w,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20.w,
                        child: CircleAvatar(
                          radius: 18.w,
                          backgroundImage:
                          const AssetImage('assets/img/profile.jpeg'),
                        ),
                      )),
                ),
              ),
            ),
            SizedBox(height: 12.w,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text("Autny Maary's Heart rate os too elevated - 129BMP!",
            maxLines: 3,
            softWrap: true,
            textAlign: TextAlign.center,
            style: myCustomTextFonts.emergencyBigTitleText(Colors.white),),
          ),
            SizedBox(height: 5.w,),
          Row(
            children: [
              Icon(Icons.location_on_sharp, color: Colors.white),
              SizedBox(width: 3.w,),
              Text("#2 Lakefront Street, Alapere - Ketu",
                maxLines: 2,
                softWrap: true,
                style: myCustomTextFonts.smallText(Colors.white),),
            ],
          ),
            SizedBox(height: 12.w,),
            Container(
              width: myWidth * 0.6,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[800],
                  elevation: 0,
                    padding: EdgeInsets.all(3.w),
                    side: BorderSide(
                      color: Colors.white
                    ),
                ),
                onPressed: (){},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.phone, color: Colors.white,),
                    SizedBox(width: 5.w,),
                    Text("Call Her",
                      style: myCustomTextFonts.mediumText(Colors.white),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8.w,),
            Container(
              width: myWidth * 0.6,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  padding: EdgeInsets.all(3.w),
                  side: BorderSide(
                      color: Colors.white
                  ),
                ),
                onPressed: (){},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.cross, color: Colors.red,),
                    SizedBox(width: 5.w,),
                    Text("Emergency Call",
                      style: myCustomTextFonts.mediumText(Colors.red),),
                  ],
                ),
              ),
            ),
        ],
        ),
      ),
    );
  }
}
