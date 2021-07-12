part of home;

class _PlanCooking extends StatelessWidget {
  const _PlanCooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              StringResources.plan_cooking,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.01,
                color: ColorResources.kTitanWhiteColor,
              ),
            ),
            Text(
              StringResources.see_all,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.01,
                color: ColorResources.kTitanWhiteColor.withOpacity(0.4),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 27,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _PlanCookingCard(
                imageUrl: ImageResources.thumbnail_spicy,
                name: StringResources.spicy_fried,
                time: StringResources.minute_15,
                level: StringResources.easy_cooking,
              ),
              SizedBox(
                width: 30,
              ),
              _PlanCookingCard(
                imageUrl: ImageResources.thumbnail_spicy,
                name: StringResources.spicy_fried,
                time: StringResources.minute_15,
                level: StringResources.easy_cooking,
              ),
              SizedBox(
                width: 30,
              ),
              _PlanCookingCard(
                imageUrl: ImageResources.thumbnail_spicy,
                name: StringResources.spicy_fried,
                time: StringResources.minute_15,
                level: StringResources.easy_cooking,
              ),
              SizedBox(
                width: 30,
              ),
              _PlanCookingCard(
                imageUrl: ImageResources.thumbnail_spicy,
                name: StringResources.spicy_fried,
                time: StringResources.minute_15,
                level: StringResources.easy_cooking,
              ),
              SizedBox(
                width: 30,
              ),
              _PlanCookingCard(
                imageUrl: ImageResources.thumbnail_spicy,
                name: StringResources.spicy_fried,
                time: StringResources.minute_15,
                level: StringResources.easy_cooking,
              ),
              SizedBox(
                width: 30,
              ),
              _PlanCookingCard(
                imageUrl: ImageResources.thumbnail_spicy,
                name: StringResources.spicy_fried,
                time: StringResources.minute_15,
                level: StringResources.easy_cooking,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
