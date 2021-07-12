part of detail;

class _IngredientsCard extends StatelessWidget {
  const _IngredientsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              ColorResources.kTroutColor,
              ColorResources.kTunaColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ExpansionTile(
          backgroundColor: Colors.transparent,
          collapsedBackgroundColor: Colors.transparent,
          title: Row(
            children: [
              SvgPicture.asset(IconResources.bag),
              SizedBox(
                width: 18,
              ),
              Text(
                StringResources.title_ingredients,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.01,
                  color: ColorResources.kFogColor,
                ),
              ),
            ],
          ),
          children: [
            _IngredientsItem(
              id: '1',
              name: StringResources.desc_ingredients_1,
            ),
            _IngredientsItem(
              id: '2',
              name: StringResources.desc_ingredients_2,
            ),
            _IngredientsItem(
              id: '3',
              name: StringResources.desc_ingredients_3,
            ),
            _IngredientsItem(
              id: '4',
              name: StringResources.desc_ingredients_4,
            ),
            _IngredientsItem(
              id: '5',
              name: StringResources.desc_ingredients_5,
            ),
            SizedBox(height: 10),
          ],
          iconColor: Colors.white,
          collapsedIconColor: Colors.white,
        ),
      ),
    );
  }
}
