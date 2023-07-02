void main() {
  //Maria
  //Jose
  //Laura
  //ya no se inicializa en constructor
  //Alumno maria = Alumno(nombre: 'Maria', apellido: 'Lopez', edad: 15, telefono: '43245423523', calificaciones: [7,8,9,10]);
  Alumno maria = Alumno();
  maria.setNombre = 'Sofia';
  maria.setCalificaciones = [7, 8, 9, 10];
  maria.obtenerPromedio();

  //Alumno jose = Alumno(nombre: 'Jose', apellido: 'Joaquin', edad: 21, telefono: '98987424907', calificaciones: [10,10,9,9]);
  Alumno jose = Alumno();
  jose.setNombre = 'jose';
  jose.setCalificaciones = [7, 8, 9, 10];
  jose.obtenerPromedio();

  Profesor andres = Profesor();
  andres.setNombre = 'Andres';
  andres.setRFC = 'RERA910404';
  andres.tieneRFC();
}

class Escuela {
  bienvenida() {}
}

abstract class Persona implements Escuela {
  String _nombre = '';
  String _apellido = '';
  int _edad = 0;
  String _telefono = '';

  get getNombre => this._nombre;
  set setNombre(String nombre) => this._nombre = nombre;
}

class Alumno extends Persona {
  List<double> _calificaciones = const [];

  //constructor
  //Alumno({this.nombre = '', this.apellido = '', this.edad = 0, this.telefono = '', this.calificaciones = const []});

  get getCalificaciones => this._calificaciones;
  set setCalificaciones(List<double> calificaciones) =>
      this._calificaciones = calificaciones;

  obtenerPromedio() {
    bienvenida();
    print('El promedio del ${this._nombre} es: ${_calcularPromedio()}');
  }

  _calcularPromedio() {
    return this._calificaciones.reduce((valor, elemento) => valor + elemento) /
        this._calificaciones.length;
  }

  @override
  bienvenida() {
    print('Bienvenido alumno ${this._nombre}');
  }
}

class Profesor extends Persona with Validaciones {
  String _rfc = '';

  //constructor
  //Alumno({this.nombre = '', this.apellido = '', this.edad = 0, this.telefono = '', this.calificaciones = const []});

  get getRFC => this._rfc;
  set setRFC(String rfc) => this._rfc = rfc;

  tieneRFC() {
    bienvenida();
    if (_rfc.isNotEmpty) {
      print('RFC: $_rfc del profesor: $_nombre');
    } else {
      print('El profesor: $_nombre No tiene un RFC');
    }

    validarRFCHomoclave(this._rfc);
  }

  @override
  bienvenida() {
    print('Bienvenido profesor ${this._nombre}');
  }
}

mixin Validaciones {
  validarRFCHomoclave(String rfc) {
    print(rfc.length > 10 ? 'RFC con homoclave' : 'RFC sin homoclave');
  }
}
