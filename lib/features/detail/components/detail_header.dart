part of detail;

class _DetailHeader extends StatelessWidget {
  const _DetailHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringResources.spicy_fried,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.01,
            color: ColorResources.kTitanWhiteColor,
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  StringResources.minute_15,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.01,
                    color: ColorResources.kTitanWhiteColor.withOpacity(0.3),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '|',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.01,
                    color: ColorResources.kTitanWhiteColor.withOpacity(0.4),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  StringResources.easy_cooking,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.01,
                    color: ColorResources.kTitanWhiteColor.withOpacity(0.4),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(IconResources.profileBold),
                SizedBox(width: 8),
                Text(
                  StringResources.people_4,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.01,
                    color: ColorResources.kTitanWhiteColor.withOpacity(0.4),
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  ImageResources.chefJacob,
                  width: 24,
                ),
                SizedBox(width: 8),
                Text(
                  StringResources.by_chef_jacob,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 0.01,
                    color: ColorResources.kTitanWhiteColor.withOpacity(0.3),
                  ),
                ),
              ],
            ),
            Container(
              width: 72,
              height: 24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  width: 1,
                  color: ColorResources.kTitanWhiteColor.withOpacity(0.4),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                '+ ${StringResources.follow}',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.01,
                  color: ColorResources.kTitanWhiteColor.withOpacity(0.4),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 20),
        Divider(
          height: 1,
          color: ColorResources.kTitanWhiteColor.withOpacity(0.3),
        ),
      ],
    );
  }
}
