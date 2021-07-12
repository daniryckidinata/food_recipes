part of home;

class _RecipesForYou extends StatelessWidget {
  const _RecipesForYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // HEADER FOR YOU
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              StringResources.recipes_for,
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
        // END HEADER FOR YOU

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _RecipesCard(
                imageUrl: ImageResources.potato,
                nameRecipes: StringResources.potato,
                totalRecipes: StringResources.recipes_30,
              ),
              SizedBox(
                width: 30,
              ),
              _RecipesCard(
                imageUrl: ImageResources.dessert,
                nameRecipes: StringResources.dessert,
                totalRecipes: StringResources.recipes_25,
              ),
              SizedBox(
                width: 30,
              ),
              _RecipesCard(
                imageUrl: ImageResources.potato,
                nameRecipes: StringResources.potato,
                totalRecipes: StringResources.recipes_30,
              ),
              SizedBox(
                width: 30,
              ),
              _RecipesCard(
                imageUrl: ImageResources.dessert,
                nameRecipes: StringResources.dessert,
                totalRecipes: StringResources.recipes_25,
              ),
              SizedBox(
                width: 30,
              ),
              _RecipesCard(
                imageUrl: ImageResources.potato,
                nameRecipes: StringResources.potato,
                totalRecipes: StringResources.recipes_30,
              ),
              SizedBox(
                width: 30,
              ),
              _RecipesCard(
                imageUrl: ImageResources.dessert,
                nameRecipes: StringResources.dessert,
                totalRecipes: StringResources.recipes_25,
              ),
              SizedBox(
                width: 30,
              ),
              _RecipesCard(
                imageUrl: ImageResources.potato,
                nameRecipes: StringResources.potato,
                totalRecipes: StringResources.recipes_30,
              ),
              SizedBox(
                width: 30,
              ),
              _RecipesCard(
                imageUrl: ImageResources.dessert,
                nameRecipes: StringResources.dessert,
                totalRecipes: StringResources.recipes_25,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
