import 'package:elbek/riverpod/all_providers.dart';
import 'package:elbek/utils/colors.dart';
import 'package:elbek/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterPage extends ConsumerStatefulWidget {
  const FooterPage({super.key});

  @override
  ConsumerState<FooterPage> createState() => _Container7State();
}

class _Container7State extends ConsumerState<FooterPage> {
  @override
  Widget build(BuildContext context) {
    final darkState = ref.watch(AppProvider.isDarkProvider);
    return ScreenTypeLayout(
      mobile: _mobilePage(darkState),
      desktop: _desktopFooter(darkState),
      tablet: _mobilePage(darkState),
    );
  }

  Widget _desktopFooter(bool darkState) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: w! * 0.15),
      width: w!,
      height: 70,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.spaceBetween,
        children: [
          Wrap(
            children: [
              myIconButton(
                  darkState,
                  'https://www.facebook.com/elbekmirzamaxmudov/',
                  MaterialCommunityIcons.facebook),myIconButton(
                  darkState,
                  'https://www.instagram.com/el.bekk/',
                  MaterialCommunityIcons.instagram),myIconButton(
                  darkState,
                  'https://twitter.com/EMirzamakhmudov',
                  MaterialCommunityIcons.twitter),
            myIconButton(
                  darkState,
                  'https://www.linkedin.com/in/elbek-mirzamakhmudov-4b91aa260/',
                  MaterialCommunityIcons.youtube),
                  myIconButton(
                  darkState,
                  'https://t.me/elbekmirzamaxmudov',
                      Icons.send_rounded),
                myIconButton(
                  darkState,
                  'https://github.com/elbeekk',
                    MaterialCommunityIcons.github),
                    myIconButton(
                  darkState,
                  'https://www.linkedin.com/in/elbek-mirzamakhmudov-4b91aa260/',
                    MaterialCommunityIcons.linkedin),
            ],
          ),
          Text(
            '© 2023 CV. All Rights Reserved.',
            style: GoogleFonts.aBeeZee(fontSize: 16,color: darkState?AppColors.mainTitleColorDark:AppColors.mainTitleColorLight),
          ),
          SelectableText.rich(TextSpan(
              text: 'Developed by ',
              style: GoogleFonts.aBeeZee(fontSize: 16,color: darkState?AppColors.mainTitleColorDark:AppColors.mainTitleColorLight),
              children: [
                TextSpan(
                    text: 'Elbek',
                    style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold))
              ]))
        ],
      ),
    );
  }

  IconButton myIconButton(bool darkState, String url, IconData icon) {
    return IconButton(
        splashRadius: 20,
        onPressed: () {
          launch(url);
        },
        icon: Icon(
          icon,
          color: darkState
              ? AppColors.mainTitleColorDark
              : AppColors.mainTitleColorLight,
        ));
  }

  Widget _mobilePage(bool darkState) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: w!,
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.center,
        children: [
          Wrap(
            children: [
              myIconButton(
                  darkState,
                  'https://www.facebook.com/elbekmirzamaxmudov/',
                  MaterialCommunityIcons.facebook),myIconButton(
                  darkState,
                  'https://www.instagram.com/el.bekk/',
                  MaterialCommunityIcons.instagram),myIconButton(
                  darkState,
                  'https://twitter.com/EMirzamakhmudov',
                  MaterialCommunityIcons.twitter),
              myIconButton(
                  darkState,
                  'https://www.linkedin.com/in/elbek-mirzamakhmudov-4b91aa260/',
                  MaterialCommunityIcons.youtube),
              myIconButton(
                  darkState,
                  'https://t.me/elbekmirzamaxmudov',
                  Icons.send_rounded),
              myIconButton(
                  darkState,
                  'https://github.com/elbeekk',
                  MaterialCommunityIcons.github),
              myIconButton(
                  darkState,
                  'https://www.linkedin.com/in/elbek-mirzamakhmudov-4b91aa260/',
                  MaterialCommunityIcons.linkedin),
            ],
          ),
          Text(
            '© 2023 CV. All Rights Reserved.',
            style: GoogleFonts.aBeeZee(fontSize: 16,color: darkState?AppColors.mainTitleColorDark:AppColors.mainTitleColorLight),
          ),
          SelectableText.rich(TextSpan(
              text: 'Developed by ',
              style: GoogleFonts.aBeeZee(fontSize: 16,color: darkState?AppColors.mainTitleColorDark:AppColors.mainTitleColorLight),
              children: [
                TextSpan(
                    text: 'Elbek',
                    style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold))
              ]))
        ],
      ),
    );
  }

  Widget TabletContainer7() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      padding: const EdgeInsets.all(10),
      width: w!,
      child: Wrap(
        spacing: 40,
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.center,
        children: [
          Wrap(
            children: [
              IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    launch('https://www.facebook.com/elbekmirzamaxmudov/');
                  },
                  icon: const Icon(MaterialCommunityIcons.facebook)),
              IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    launch('https://www.instagram.com/el.bekk/');
                  },
                  icon: const Icon(MaterialCommunityIcons.instagram)),
              IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    launch('https://twitter.com/EMirzamakhmudov');
                  },
                  icon: const Icon(MaterialCommunityIcons.twitter)),
              IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    launch(
                        'https://www.linkedin.com/in/elbek-mirzamakhmudov-4b91aa260/');
                  },
                  icon: const Icon(MaterialCommunityIcons.youtube)),
              IconButton(
                splashRadius: 20,
                onPressed: () {
                  launch('https://t.me/elbekmirzamaxmudov');
                },
                icon: const Icon(Icons.send_rounded),
              ),
              IconButton(
                splashRadius: 20,
                onPressed: () {
                  launch('https://github.com/elbeekk');
                },
                icon: const Icon(MaterialCommunityIcons.github),
              ),
              IconButton(
                splashRadius: 20,
                onPressed: () {
                  launch(
                      'https://www.linkedin.com/in/elbek-mirzamakhmudov-4b91aa260/');
                },
                icon: const Icon(MaterialCommunityIcons.linkedin),
              ),
            ],
          ),
          Text(
            '© 2023 CV. All Rights Reserved.',
            style: GoogleFonts.aBeeZee(fontSize: 16),
          ),
          SelectableText.rich(TextSpan(
              text: 'Developed by ',
              style: GoogleFonts.aBeeZee(fontSize: 16),
              children: [
                TextSpan(
                    text: 'Elbek',
                    style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold))
              ]))
        ],
      ),
    );
  }
}
