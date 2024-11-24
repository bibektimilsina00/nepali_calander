part of '../nepali_calander.dart';

typedef _SelectedDayCallback = void Function(NepaliDateTime day,
    {bool runCallback});

class NepaliCalendarController {
  NepaliDateTime? _selectedDay;
  _SelectedDayCallback? _selectedDayCallback;
  NepaliDateTime? get selectedDay => _selectedDay;

  void setSelectedDay(
    NepaliDateTime value, {
    bool isProgrammatic = true,
    bool animate = true,
    bool runCallback = false,
  }) {
    _selectedDay = value;

    if (isProgrammatic && _selectedDayCallback != null) {
      _selectedDayCallback?.call(value, runCallback: runCallback);
    }
  }

  void _init({
    required _SelectedDayCallback selectedDayCallback,
    required NepaliDateTime initialDay,
  }) {
    _selectedDayCallback = selectedDayCallback;
    _selectedDay = initialDay;
  }
}
