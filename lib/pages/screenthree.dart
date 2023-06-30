import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app/style/app_style.dart';
import '../data/data.dart';
import '../size_config.dart';


class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal! * 7,
            ),
            child: Column(
              children: const [
                // User Info Area .

                // GetBestMedicalService
                GetBestMedicalService(),
              ],
            ),
          ),
          // Upcoming Appointments

        ],
      ),
    );
  }
}



class GetBestMedicalService extends StatelessWidget {
  const GetBestMedicalService({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical! * 3),
      child: Stack(
        alignment: Alignment.bottomRight,

        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffDCEDF9),
              borderRadius: BorderRadius.all(Radius.circular(28.0)),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: SizeConfig.blockSizeHorizontal! * 5,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Qandli diabet\nqand kasalligi",
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1,
                                  ),
                        ),
                        SizedBox(height: SizeConfig.blockSizeVertical! * 1),
                        Text(
                          "Organizmda insulin tanqisligi va moddalar almashinuvi buzilishi natijasida kelib chiqadigan kasallik."
                              "\nQand kasalligi sharq xalq tabobat tarixida juda qadimdan maʼlum",
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                    fontSize: 11.0,
                                    height: 1.5,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Expanded(
                //   child: Padding(
                //     padding:
                //         EdgeInsets.only(top: SizeConfig.blockSizeVertical! * 2),
                //     child: Image.asset(AppStyle.image1),
                //   ),
                // )
              ],
            ),

          ),


        ],
      ),

    );

  }



}


