part of '../main_section.dart';

class _MobileDrawer extends StatelessWidget {
  const _MobileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);

    var theme = Theme.of(context);
    return Drawer(
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return Material(
            color: theme.scaffoldBackgroundColor,
            child: Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(child: NavBarLogo()),
                  const Divider(),
                  ListTile(
                    leading: Icon(
                      state.isDarkThemeOn
                          ? Icons.dark_mode_outlined
                          : Icons.light_mode,
                      // color: theme.textColor,
                    ),
                    title:
                        Text(state.isDarkThemeOn ? "Light Mode" : "Dark Mode"),
                    trailing: Switch(
                      value: state.isDarkThemeOn,
                      activeColor: theme.primaryColor,
                      inactiveTrackColor: Colors.grey,
                      onChanged: (newValue) {
                        context.read<ThemeCubit>().updateTheme(newValue);
                      },
                    ),
                  ),
                  const Divider(),
                  ...NavBarUtils.names.asMap().entries.map(
                        (e) => Padding(
                          padding: const EdgeInsets.all(20).r,
                          child: MaterialButton(
                            hoverColor: theme.primaryColor.withAlpha(70),
                            onPressed: () {
                              // scrollProvider.scrollMobile(e.key);
                              scrollProvider.jumpTo(e.key);
                              Navigator.pop(context);
                            },
                            child: ListTile(
                              leading: Icon(
                                NavBarUtils.icons[e.key],
                                // color: theme.primaryColor,
                              ),
                              title: Text(
                                e.value,
                                // style: AppText.l1,
                              ),
                            ),
                          ),
                        ),
                      ),
                  SizedBox(
                    height: 50.h.ap(),
                  ),
                  ColorChageButton(
                    height: 95.h.ap(),
                    width: 245.w.ap(),
                    fontSize: 30.sp.ap(
                        adaptivePercentage:
                            const AdaptivePercentage(mobile: 100)),
                    text: 'RESUME',
                    onTap: () {
                      openURL(resume);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
