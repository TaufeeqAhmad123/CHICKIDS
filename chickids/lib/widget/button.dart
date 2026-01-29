import 'package:flutter/material.dart';

class SlideToActButton extends StatefulWidget {
  final VoidCallback onSlideComplete;
  final String text;
  final Color backgroundColor;
  final Color sliderColor;

  const SlideToActButton({
    Key? key,
    required this.onSlideComplete,
    this.text = 'Slide to continue',
    this.backgroundColor = const Color(0xFF1a1a1a),
    this.sliderColor = Colors.white,
  }) : super(key: key);

  @override
  State<SlideToActButton> createState() => _SlideToActButtonState();
}

class _SlideToActButtonState extends State<SlideToActButton>
    with SingleTickerProviderStateMixin {
  double _dragPosition = 0;
  double _maxDrag = 0;
  bool _isCompleted = false;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation =
        Tween<double>(begin: 0, end: 0).animate(
          CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
        )..addListener(() {
          setState(() {
            _dragPosition = _animation.value;
          });
        });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onHorizontalDragStart(DragStartDetails details) {
    if (_isCompleted) return;
    setState(() {
      _dragPosition = 0;
    });
  }

  void _onHorizontalDragUpdate(DragUpdateDetails details) {
    if (_isCompleted) return;

    setState(() {
      _dragPosition += details.delta.dx;
      _dragPosition = _dragPosition.clamp(0.0, _maxDrag);
    });
  }

  void _onHorizontalDragEnd(DragEndDetails details) {
    if (_isCompleted) return;

    if (_dragPosition > _maxDrag * 0.6) {
      // Complete the slide
      setState(() {
        _isCompleted = true;
      });
      _animation = Tween<double>(begin: _dragPosition, end: _maxDrag).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
      );
      _animationController.forward(from: 0).then((_) {
        widget.onSlideComplete();
        setState(() {
          _maxDrag=0;
        _dragPosition=0;
        });
      });
    } else {
      // Reset to start
      _animation = Tween<double>(begin: _dragPosition, end: 0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
      );
      _animationController.forward(from: 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        _maxDrag = constraints.maxWidth - 100;

        return Container(
          height: 70,

          decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(35),
          ),
          child: Stack(
            children: [
              // Progress indicator
              Positioned(
                left: 0,
                top: 0,
                bottom: 0,
                child: Container(
                  width: _dragPosition + 70,
                  decoration: BoxDecoration(
                    color: widget.backgroundColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ),

              // Text
              Positioned(
                right: 20,
                top: 20,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(3, (index) {
                    final Opacity = (index + 1) / 3;
                    return Icon(
                      Icons.arrow_forward_ios,
                      color: widget.sliderColor.withOpacity(Opacity),
                      size: 20,
                    );
                  }),
                ),
              ),
              // Slider circle
              Positioned(
                left: _dragPosition,
                top: 3,
                
                child: GestureDetector(
                  onHorizontalDragStart: _onHorizontalDragStart,
                  onHorizontalDragUpdate: _onHorizontalDragUpdate,
                  onHorizontalDragEnd: _onHorizontalDragEnd,
                  child: Container(
                    height: 60,

                    width: 150,
                             
                    //  margin: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: widget.sliderColor,
                      borderRadius: BorderRadius.circular(35),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
