import 'package:flutter/material.dart';
import 'package:gta/constants/import_export_vehicles.dart';
import 'package:gta/view/import_export_vehicles/components/vehicle_modal.dart';
import 'package:gta/view/schools/school_modal.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class VehicleCard extends StatefulWidget {
  final Vehicle vehicle;

  const VehicleCard({super.key, required this.vehicle});

  @override
  State<VehicleCard> createState() => _VehicleCardState();
}

class _VehicleCardState extends State<VehicleCard> {
  bool _isChecked = false;

  @override
  void initState() {
    (() async {})();
    super.initState();
  }

  void toggleStatus(bool? value) {
    setState(() {
      _isChecked = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
      child: SizedBox(
        width: double.maxFinite,
        child: FilledButton(
          onPressed: () {
            showBarModalBottomSheet(
                context: context,
                builder: (context) => VehicleModal(
                      title: widget.vehicle.name,
                      toggleStatus: () {
                        toggleStatus(!_isChecked);
                        Navigator.of(context).pop();
                      },
                      isCompleted: _isChecked,
                      imageLink: widget.vehicle.img,
                    ));
          },
          style: ButtonStyle(
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
            child: Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flex(direction: Axis.horizontal, children: [
                  Container(
                    height: 80,
                    width: 80,
                    child: Image.network(widget.vehicle.img),
                  ),
                  Container(width: 16),
                  Text(widget.vehicle.name),
                ]),
                Checkbox(
                    value: _isChecked,
                    onChanged: (value) => toggleStatus(value))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
