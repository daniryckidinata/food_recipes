part of home;

class _HeaderHome extends StatelessWidget {
  const _HeaderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            text: StringResources.hi + '\n',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.01,
              color: ColorResources.kFogColor,
            ),
            children: [
              TextSpan(
                text: StringResources.its_time,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.01,
                  color: ColorResources.kFogColor,
                  height: 1.7,
                ),
              ),
              TextSpan(
                text: StringResources.dinner,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.01,
                  color: ColorResources.kTitanWhiteColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
