part of detail;

class _IconBookmark extends StatelessWidget {
  const _IconBookmark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 52,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            ColorResources.kBrightGrayColor,
            ColorResources.kCharadeColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0, 1],
        ),
        boxShadow: [
          BoxShadow(
            // color: ColorResources.kCharade2Color,
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 3,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: SvgPicture.asset(
        IconResources.bookmark,
      ),
    );
  }
}
