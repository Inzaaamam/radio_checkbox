import 'package:flutter/material.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';

class DataTimeScreen extends StatefulWidget {
  const DataTimeScreen({super.key});
  @override
  State<DataTimeScreen> createState() => _DataTimeScreenState();
}

class _DataTimeScreenState extends State<DataTimeScreen> {
  final FormGroup form = FormGroup({
    'date': FormControl<DateTime>(
      validators: [
        Validators.required,
      ],
    ),
    'time': FormControl<DateTime>(),
    'dateTime': FormControl<DateTime>(),
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reactive Forms Example'),
      ),
      body: ReactiveForm(
        formGroup: form,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 8),
              ReactiveDateTimePicker(
                formControlName: 'date',
                decoration: const InputDecoration(
                  labelText: 'Date',
                  border: OutlineInputBorder(),
                  helperText: '',
                  suffixIcon: Icon(Icons.calendar_today),
                ),
              ),
              const SizedBox(height: 8),
              ReactiveDateTimePicker(
                formControlName: 'time',
                type: ReactiveDatePickerFieldType.time,
                decoration: const InputDecoration(
                  labelText: 'Time',
                  border: OutlineInputBorder(),
                  helperText: '',
                  suffixIcon: Icon(Icons.watch_later_outlined),
                ),
              ),
              const SizedBox(height: 8),
              ReactiveDateTimePicker(
                formControlName: 'dateTime',
                type: ReactiveDatePickerFieldType.dateTime,
                decoration: const InputDecoration(
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                  ),
                  labelText: 'Date & Time',
                  border: OutlineInputBorder(),
                  helperText: '',
                  suffixIcon: Icon(Icons.calendar_today),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                child: const Text('Sign Up'),
                onPressed: () {
                  if (form.valid) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Form is valid!'),
                      ),
                    );
                  } else {
                    form.markAllAsTouched();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
