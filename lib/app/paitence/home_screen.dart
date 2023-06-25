import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ola_health/app/utils/custom_text_fonts.dart';
import 'package:ola_health/app/utils/helpers/chart_classes.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final myCustomTextFonts =   MyCustomTextFonts();
  @override
  Widget build(BuildContext context) {
    double myWidth = MediaQuery.of(context).size.width;
    double myHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,//Color(0xFFAEB0B2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu_outlined, color: Colors.black, size: 6.w,),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 4.w),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Text("Hello, Idika",
                    style: myCustomTextFonts.bigTitleText(
                      Colors.white
                    ),)
                  ],
                ),
              ),
              SizedBox(height: 4.w,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: myWidth * 0.28,
                    padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 3.w),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.weightScale, size: 10.w,color: Colors.white),
                        SizedBox(height: 1.w,),
                        Text("87 Kg",
                          style: myCustomTextFonts.bigText(Colors.white),),
                      ],
                    ),
                  ),
                  Container(
                    width: myWidth * 0.28,
                    padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 3.w),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.stethoscope, size: 10.w,),
                        SizedBox(height: 1.w,),
                        Text("122",
                          style: myCustomTextFonts.bigText(Colors.black),),
                      ],
                    ),
                  ),
                  Container(
                    width: myWidth * 0.28,
                    padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 3.w),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.heartPulse, size: 10.w,),
                        SizedBox(height: 1.w,),
                        Text("98",
                          style: myCustomTextFonts.bigText(Colors.black),),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.w,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 3.w),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text("If you want to give support for both portrait and landscape then make separate widget for both like orientation example.",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: myCustomTextFonts.mediumText(Colors.black),),
              ),
              SizedBox(height: 4.w,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: myWidth * 0.28,
                    padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 3.w),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.health_and_safety, size: 10.w,),
                        Text("Drugs",
                          style: myCustomTextFonts.bigText(Colors.black),),
                      ],
                    ),
                  ),
                  Container(
                    width: myWidth * 0.28,
                    padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 3.w),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.health_and_safety, size: 10.w,),
                        Text("Drugs",
                          style: myCustomTextFonts.bigText(Colors.black),),
                      ],
                    ),
                  ),
                  Container(
                    width: myWidth * 0.28,
                    padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 3.w),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.health_and_safety, size: 10.w,),
                        Text("Drugs",
                          style: myCustomTextFonts.bigText(Colors.black),),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.w,),
              /*
              SfCartesianChart(
                  primaryXAxis: CategoryAxis(
                    axisLine: const AxisLine(width: 0),
                    borderColor: Colors.transparent,
                    majorTickLines: const MajorTickLines(width: 0),
                    minorTickLines: const MinorTickLines(width: 0),
                    majorGridLines: const MajorGridLines(width: 0),
                    minorGridLines: const MinorGridLines(width: 0),
                  ),
                  title: ChartTitle(text: 'Monthly BP Chart'),
                  enableSideBySideSeriesPlacement: false,
                  plotAreaBorderWidth: 0,
                  tooltipBehavior: TooltipBehavior(enable: true),
                  series: <ChartSeries<Infections, String>>[
                    LineSeries<Infections, String>(
                        dataSource: <Infections>[
                          Infections('Jan', 35),
                          Infections('Feb', 28),
                          Infections('Mar', 4),
                          Infections('Apr', 32),
                          Infections('May', 40),
                          Infections('Jun', 32)
                        ],
                        xValueMapper: (Infections victims, _) => victims.year,
                        yValueMapper: (Infections victims, _) => victims.victims,
                        dataLabelSettings: const DataLabelSettings(isVisible: true),
                    )
                  ]),*/
              //Heart rate
              Container(
                padding: EdgeInsets.only(right: 4.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.w),
                  color: const Color(0xFFB6B8BF),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                            padding: EdgeInsets.all(4.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.w),
                              color: Color(0xFF387EE2),
                            ),
                            child: Icon(FontAwesomeIcons.heartPulse, size: 10.w,color: Colors.white70,)),
                        SizedBox(width: 3.w,),
                        RichText(text:
                        TextSpan(
                            text: "Heart Rate\n",
                            style: myCustomTextFonts.smallText(Colors.black),
                            children: [
                              TextSpan(
                                  text: " 120 bpm",
                                  style: myCustomTextFonts.smallText(Color(0xFF387EE2))
                              ),
                            ]
                        )),
                      ],
                    ),
                    /*
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("11:45 AM\n",
                          style: myCustomTextFonts.smallText(Colors.black),),
                        Text("May 12,'23",
                          style: myCustomTextFonts.smallText(Color(0xFF3F41FF))),
                        //const Spacer()
                      ],
                    ),
                    */
                    Container(
                      padding: EdgeInsets.all(2.w),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(3.w)
                      ),
                      child: RichText(text:
                      TextSpan(
                          text: "11:45 AM\n",
                          style: myCustomTextFonts.smallText(Colors.black),
                          children: [
                            TextSpan(
                                text: "  May 12",
                                style: myCustomTextFonts.smallText(Color(0xFF387EE2))
                            ),
                          ]
                      )),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.w,),
              //Blood Count
              Container(
                padding: EdgeInsets.only(right: 4.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.w),
                  color: const Color(0xFFB6B8BF),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                            padding: EdgeInsets.all(4.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.w),
                              color: Color(0xFF387EE2),
                            ),
                            child: Icon(FontAwesomeIcons.chartSimple, size: 10.w,color: Colors.white70,)),
                        SizedBox(width: 3.w,),
                        RichText(text:
                        TextSpan(
                            text: "Blood Count\n",
                            style: myCustomTextFonts.smallText(Colors.black),
                            children: [
                              TextSpan(
                                  text: " 80-90",
                                  style: myCustomTextFonts.smallText(Color(0xFF387EE2))
                              ),
                            ]
                        )),
                      ],
                    ),
                    /*
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("11:45 AM\n",
                          style: myCustomTextFonts.smallText(Colors.black),),
                        Text("May 12,'23",
                          style: myCustomTextFonts.smallText(Color(0xFF3F41FF))),
                        //const Spacer()
                      ],
                    ),
                    */
                    Container(
                      padding: EdgeInsets.all(2.w),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(3.w)
                      ),
                      child: RichText(text:
                      TextSpan(
                          text: "11:45 AM\n",
                          style: myCustomTextFonts.smallText(Colors.black),
                          children: [
                            TextSpan(
                                text: "  May 12",
                                style: myCustomTextFonts.smallText(Color(0xFF387EE2))
                            ),
                          ]
                      )),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.w,),
              //Blood status
              Container(
                padding: EdgeInsets.only(right: 4.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.w),
                  color: const Color(0xFFB6B8BF),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                            padding: EdgeInsets.all(4.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.w),
                              color: Color(0xFF387EE2),
                            ),
                            child: Icon(FontAwesomeIcons.droplet, size: 10.w,color: Colors.white70,)),
                        SizedBox(width: 3.w,),
                        RichText(text:
                        TextSpan(
                            text: "Blood Status\n",
                            style: myCustomTextFonts.smallText(Colors.black),
                            children: [
                              TextSpan(
                                  text: " 80-90",
                                  style: myCustomTextFonts.smallText(Color(0xFF387EE2))
                              ),
                            ]
                        )),
                      ],
                    ),
                    /*
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("11:45 AM\n",
                          style: myCustomTextFonts.smallText(Colors.black),),
                        Text("May 12,'23",
                          style: myCustomTextFonts.smallText(Color(0xFF3F41FF))),
                        //const Spacer()
                      ],
                    ),
                    */
                    Container(
                      padding: EdgeInsets.all(2.w),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(3.w)
                      ),
                      child: RichText(text:
                      TextSpan(
                          text: "11:45 AM\n",
                          style: myCustomTextFonts.smallText(Colors.black),
                          children: [
                            TextSpan(
                                text: "  May 12",
                                style: myCustomTextFonts.smallText(Color(0xFF387EE2))
                            ),
                          ]
                      )),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.w,),
              //Glucose level
              Container(
                padding: EdgeInsets.only(right: 4.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.w),
                  color: const Color(0xFFB6B8BF),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                            padding: EdgeInsets.all(4.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.w),
                              color: Color(0xFF387EE2),
                            ),
                            child: Icon(FontAwesomeIcons.barsStaggered, size: 10.w,color: Colors.white70,)),
                        SizedBox(width: 3.w,),
                        RichText(text:
                        TextSpan(
                            text: "Glucose Level\n",
                            style: myCustomTextFonts.smallText(Colors.black),
                            children: [
                              TextSpan(
                                  text: " 9000/ml",
                                  style: myCustomTextFonts.smallText(Color(0xFF387EE2))
                              ),
                            ]
                        )),
                      ],
                    ),
                    /*
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("11:45 AM\n",
                          style: myCustomTextFonts.smallText(Colors.black),),
                        Text("May 12,'23",
                          style: myCustomTextFonts.smallText(Color(0xFF3F41FF))),
                        //const Spacer()
                      ],
                    ),
                    */
                    Container(
                      padding: EdgeInsets.all(2.w),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(3.w)
                      ),
                      child: RichText(text:
                      TextSpan(
                          text: "11:45 AM\n",
                          style: myCustomTextFonts.smallText(Colors.black),
                          children: [
                            TextSpan(
                                text: "  May 12",
                                style: myCustomTextFonts.smallText(Color(0xFF387EE2))
                            ),
                          ]
                      )),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.w,),
            ],
          ),
        ),
      ),

    );
  }
}
