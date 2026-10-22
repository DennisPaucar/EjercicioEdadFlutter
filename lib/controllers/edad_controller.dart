import '../models/edad_model.dart';

class EdadController {
  EdadModel? calcularEdad({
    required String diaStr,
    required String mesStr,
    required String anioStr,
  }) {
    final dia = int.tryParse(diaStr.trim());
    final mes = int.tryParse(mesStr.trim());
    final anio = int.tryParse(anioStr.trim());

    if (dia == null || mes == null || anio == null) {
      return null;
    }

    if (mes < 1 || mes > 12) return null;
    if (dia < 1 || dia > 31) return null;
    if (anio < 1900 || anio > DateTime.now().year) return null;

    final nac = DateTime(anio, mes, dia);
    if (nac.year != anio || nac.month != mes || nac.day != dia) {
      return null; // Fecha no válida en el calendario (ej: 31 de Febrero)
    }

    final hoy = DateTime.now();
    final today = DateTime(hoy.year, hoy.month, hoy.day);

    if (nac.isAfter(today)) {
      return null; // La fecha de nacimiento no puede ser futura
    }

    int years = today.year - nac.year;
    int months = today.month - nac.month;
    int days = today.day - nac.day;

    if (days < 0) {
      final prevMonthDays = DateTime(today.year, today.month, 0).day;
      days += prevMonthDays;
      months--;
    }

    if (months < 0) {
      months += 12;
      years--;
    }

    final totalDays = today.difference(nac).inDays;

    return EdadModel(
      anios: years,
      meses: months,
      dias: days,
      totalDias: totalDays,
      fechaNacimiento: nac,
    );
  }
}
