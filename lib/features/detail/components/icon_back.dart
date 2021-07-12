part of detail;

class _IconBack extends StatelessWidget {
  const _IconBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 52,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ColorResources.kBrightGrayColor.withOpacity(0.4),
            ColorResources.kCharadeColor.withOpacity(0.4),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0, 1],
        ),
      ),
      child: Icon(
        Icons.keyboard_arrow_left_rounded,
        color: Colors.white,
        size: 35,
      ),
    );
  }
}
