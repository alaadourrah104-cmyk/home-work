// Q1
// Design an OOP model for planning trip fuel across multiple vehicle types.
// Requirements:
// - Provide a general vehicle type with encapsulated core data (private fields) and validated constructors
// (invalid → print an error; keep previous values).
// - Create at least two specialized vehicle types that inherit from the general type and introduce one
// private field each affecting fuel usage, with validation.
// - Define a fuel computation method in the general type; specialized types must override it with their own
// rule.
// - In a mixed collection of vehicles, given a list of trip distances, compute total fuel per vehicle and print
// which vehicles cannot complete the route under their own constraints (you define the constraint per
// type).
void main() {
  List<generalVehicle> vehicle = [
    car(true, 50,"car"),
    bus(0.07, "bus", 120),
  ];
  List<double> trips = [150, 79];
  for (var item in vehicle) {
    var computeFuelConsumption = 0;
    double totalLose = 0;
    for (var v in trips) {
      computeFuelConsumption += generalVehicle.computeFuelConsumption(v);
    }

    if (generalVehicle.currentCapacity < computeFuelConsumption) {
      print("${generalVehicle.vehicleType}has n't enough fuel");
    }
    // print("${item._fuelConsumption},${item._speed},${item._vehicleType}");
    //   }
  }
}

class generalVehicle {
  double _fuelConsumption = 0;
  String? _vehicleType;

  double? _currentCapacity;

  generalVehicle(double fuelConsumption, String, double currentCapacity) {
    if (_fuelConsumption! > 0) {
      _fuelConsumption = fuelConsumption;
    } else {
      print("error!! value must be greater than 0");
    }

    if (currentCapacity < 0) {
      _currentCapacity = currentCapacity;
    } else {
      print("error ");
    }
    double computeFuelConsumption(double distance) {
      return 0;
    }
  }
}

class car extends generalVehicle {
  bool _airCondition;
  car(
    this._airCondition, {
    required super.fuelConsumption,
    required super.vehicleType,
  });

  int _computeFuelConsumptionPerKm = 10;
  @override
  double computeFuelConsumption(double distance) {
    return _computeFuelConsumptionPerKm * distance;
  }
}

class bus extends generalVehicle {
  bus(super.fuelConsumption, super.speed, super.vehicleType);

  @override
  double computeFuelConsumption(double distance) {
    return 0;
  }
}