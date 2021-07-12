part of detail;

class _InstructionsItem extends StatelessWidget {
  final String id;
  final String name;

  const _InstructionsItem({
    Key? key,
    required this.id,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 24,
            height: 24,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorResources.kCharade3Color,
            ),
            child: Text(
              id,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                letterSpacing: 0.01,
                color: ColorResources.kFogColor,
              ),
            ),
            margin: const EdgeInsets.only(left: 16),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Text(
              name,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.05,
                color: ColorResources.kFogColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
