part of 'widget.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.monthDate,
    this.margin = const EdgeInsets.only(
      left: 16.0,
      right: 8.0,
      top: 4.0,
      bottom: 4.0,
    ),
    this.onPressed,
  }) : super(key: key);

  //static final _dateFormatter = DateFormat().add_yMMMM(); //DateFormat('yyyy-MM').format(now);
  final DateTime monthDate;
  final EdgeInsetsGeometry margin;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: margin,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            //_dateFormatter.format(monthDate),
            DateFormat('yyyy년 MM월').format(monthDate),
            style: theme.textTheme.subtitle1!,
          ),
          InkWell(
            onTap: onPressed,
            borderRadius: const BorderRadius.all(
              Radius.circular(4.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 4.0,
              ),
              child: Text(
                '오늘',
                style: theme.textTheme.subtitle1!,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
