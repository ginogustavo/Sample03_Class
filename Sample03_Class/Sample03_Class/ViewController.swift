//
//  ViewController.swift
//  Sample03_Class
//
//  Created by Academia on 9/01/19.
//  Copyright © 2019 index. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Crear un objecto
        let alumno1 = Alumno(nombre: "Mateo", edad: 22) // instanciar la clase
        alumno1.edadAlumno = 28
        alumno1.nombreAlumno = "Gustavo"
        
        //var alumno2 = Alumno()
        var alumno2:Alumno? = Alumno() // seria optiona, y seria una variable. sin dato, objecto nulo, hemos declarado un espacio de memoria.
        
        alumno2?.nombreAlumno = "Evelyn"
        alumno2?.edadAlumno = 25
        alumno1.mensaje()
        alumno2?.mensaje()
        
        let objAlumno3 = Pupilo()
        //let objAlumno3:Pupilo = Pupilo() // no es necesario el declarar tipo
        objAlumno3.nombreAlumno = "Pepe"
        objAlumno3.edadAlumno = 24
        objAlumno3.turnoEstudio = "Noche"
        objAlumno3.mensaje()
        objAlumno3.turnoMensaje()
        

        
    }


}

class Alumno{
    var nombreAlumno:String?
    var edadAlumno:Int?
    
    func mensaje(){
        //let nombre = nombreAlumno, let edad = edadAlumno
        print("Nombre es \(nombreAlumno!)  y edad \(edadAlumno!)")
    }
    
    init(nombre:String, edad:Int) {
        self.nombreAlumno = nombre
        self.edadAlumno = edad
    }
    init(){}
}


class Pupilo:Alumno{
    var turnoEstudio:String?
    func turnoMensaje(){
        print("Estudia de noche \(turnoEstudio)")
    }
}
