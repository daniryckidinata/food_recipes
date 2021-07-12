part of home;

class _BottomNavbarItem extends StatelessWidget {
  final int index;
  final int select;
  final Function(int index)? onTap;
  final String iconUrl;

  _BottomNavbarItem({
    required this.iconUrl,
    required this.index,
    required this.select,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!(index);
        }
      },
      child: select == index
          ? AnimatedContainer(
              duration: Duration(milliseconds: 100),
              width: 64,
              height: 64,
              margin: EdgeInsets.only(
                bottom: 0,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    ColorResources.kTroutColor,
                    ColorResources.kTunaColor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                boxShadow: [
                  BoxShadow(
                    // color: ColorResources.kCharade2Color,
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5,
                    offset: Offset(0, 7),
                  ),
                ],
              ),
              child: Center(
                child: SvgPicture.asset(
                  iconUrl,
                  color: Colors.white,
                ),
              ),
            )
          : AnimatedContainer(
              duration: Duration(milliseconds: 100),
              width: 40,
              height: 40,
              child: Center(
                child: SvgPicture.asset(
                  iconUrl,
                  color: ColorResources.kMidGray,
                ),
              ),
              margin: const EdgeInsets.only(top: 65),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
            ),
    );
  }
}
