import '../../../../../main_importants.dart';

class JobsList extends StatelessWidget {
  const JobsList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Web Programming',
      'UI UX',
      'IOS',
      'Front-end',
      'Back-end',
      'Mobile Application',
      'Science',
      'Data Analysis',
      'Networking',
      'IT',
      'Business Analysis',
      'Writing',
      'Android',
      'Flutter',
    ];
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final screenWidth = constraints.maxWidth;
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: screenWidth,
                ),
                child: Wrap(
                  spacing: 10, // Horizontal spacing between items
                  runSpacing: 10, // Vertical spacing between rows
                  alignment: WrapAlignment.center, // Center items in each row
                  children: items.map((item) {
                    return IntrinsicWidth(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 8,
                        ),
                        child: Text(
                          item,
                          style: AppStyles.textStyle16W500Gray3,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
