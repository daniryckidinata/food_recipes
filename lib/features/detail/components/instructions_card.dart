part of detail;

class _InstructionsCard extends StatelessWidget {
  const _InstructionsCard({Key? key}) : super(key: key);

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
              SvgPicture.asset(IconResources.document),
              SizedBox(
                width: 18,
              ),
              Text(
                StringResources.title_instructions,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.01,
                  color: ColorResources.kFogColor,
                ),
              ),
            ],
          ),
          children: [
            _InstructionsItem(
              id: '1',
              name: StringResources.desc_instructions_1,
            ),
            _InstructionsItem(
              id: '2',
              name: StringResources.desc_instructions_2,
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
