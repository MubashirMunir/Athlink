import 'package:flutter/material.dart';
import 'package:athlink/Constant/custom_assets.dart';
import 'package:athlink/Theme/colors.dart';

class LogoAppbar extends StatelessWidget {
  final bool isBackIcon;
  final bool isDrawar;
  final Color color;
  const LogoAppbar(
      {Key? key,
      this.isBackIcon = true,
      this.isDrawar = true,
      this.color = const Color(0xFFffffff)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            isBackIcon
                ? GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 39,
                      width: 39,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: AppColor.white,
                          boxShadow: const [
                            // BoxShadow(
                            //     color: AppColor.shadow,
                            //     offset: Offset(0, 4),
                            //     blurRadius: 5)
                          ]),
                      child: const Center(
                        child: Icon(Icons.arrow_back_ios_new_rounded,
                            size: 20, color: AppColor.darkText),
                      ),
                    ))
                : const SizedBox(
                    width: 40,
                  ),
            const Spacer(),
            Image(
              image: AssetImage(CustomAssets.logo),
              height: 60,
              width: 90,
            ),
            const Spacer(),
            isDrawar
                ? GestureDetector(
                    onTap: () {
                      // Navigator.pop(context);
                    },
                    child: Container(
                      height: 39,
                      width: 39,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: AppColor.white,
                          boxShadow: const [
                            // BoxShadow(
                            //     color: AppColor.shadow,
                            //     offset: Offset(0, 4),
                            //     blurRadius: 5)
                          ]),
                      child: const Center(
                        child: Icon(Icons.menu,
                            size: 20, color: AppColor.darkText),
                      ),
                    ))
                : const SizedBox(
                    width: 40,
                  ),
          ],
        ),
      ),
    );
  }
}
