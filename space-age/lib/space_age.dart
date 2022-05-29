class SpaceAge {
    double? age ({String planet = "", int seconds = 0}) {
        if (planet == "Earth") {
            return double.parse((seconds / 31557600).toStringAsFixed(2));
        }
        else if (planet == "Mercury") {
            return double.parse((seconds / 31557600 / 0.2408467).toStringAsFixed(2));
        }
        else if (planet == "Venus") {
            return double.parse((seconds / 31557600 / 0.61519726).toStringAsFixed(2));
        }
        else if (planet == "Mars") {
            return double.parse((seconds / 31557600 / 1.8808158).toStringAsFixed(2));
        }
        else if (planet == "Jupiter") {
            return double.parse((seconds / 31557600 / 11.862615).toStringAsFixed(2));
        }
        else if (planet == "Saturn") {
            return double.parse((seconds / 31557600 / 29.447498).toStringAsFixed(2));
        }
        else if (planet == "Uranus") {
            return double.parse((seconds / 31557600 / 84.016846).toStringAsFixed(2));
        }
        else if (planet == "Neptune") {
            return double.parse((seconds / 31557600 / 164.79132).toStringAsFixed(2));
        }
    }
}
