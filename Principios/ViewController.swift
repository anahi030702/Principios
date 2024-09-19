//
//  ViewController.swift
//  Principios
//
//  Created by imac on 18/09/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Hola Mundo")
        let nombre = "ANAHI"
        let apellido = "ALVAREZ"
        
        mostrar_saludo(nombre: nombre, apellido)
        
        print("valor minimo:  \(Int8.min)  valor maximo:  \(Int8.max)")
        
        let res = calcular_promedio(7, 9, 800)
        
        switch res {
        case 0..<6:
            print("Burro")
        case 6..<7:
            print("Panzazo")
        case 7..<8:
            print("En UTT no pasarias")
        case 8..<9:
            print("Ahi la llevas")
        case 9...10:
            print("A chambear")
        default:
            print("Error en los datos, revisalos")
        }
        
        arreglos()
        
        //si le ponemos ! o ? significa que puede ser nil
        var num1:Int!
        //num1 = 6
        if let n = num1 {
            let num2 = 7 + n
            print(num2)
        }else{
            print("No se puede leer")
        }
        
        /* CONCATENACION
        print("Mi nombre es " + nombre + "y mi apellido es: " + apellido) */
    }
    
    func mostrar_saludo(nombre name:String, _ lastname:String = "#") {
        if lastname == "#"
        {
            print("Bienvenido " + name)
        }else
        {
            print("Bienvenido " + name + " " + lastname)
        }
    }
    
    //de esta manera le decimos que se van a recibir valores double pero que no se sabe cuantos valores se enviaran
    //lo detecta como un arreglo aunque se pasen por separado
    func calcular_promedio(_ valores:Double...) -> Double {
        var resultado = 0.0
        for valor in valores {
            resultado += valor
        }
        return resultado / Double(valores.count)
    }
    
    func arreglos(){
        //Maneras de declarar un arreglo vacio
        //var cadenas:[String] = []
        var cadenas = [String]()
        cadenas = ["Hola", "7A", "!!!!"]
        cadenas.append("Nocturno")
        cadenas += ["UTT"]
        cadenas += cadenas
        cadenas.insert("NUEVO", at: 5)
        cadenas.remove(at: 8)
        print(cadenas)
        
        
        var flotantes = [Float](repeating: 10.0, count: 20)
            flotantes[5] = 21
            print(flotantes)
            
        var arregloaTramposo:[Any] = ["Holas", 3.1416, 25, "C" as Character, true]
        arregloaTramposo[3] = "Cadena"
        arregloaTramposo[0] = 2378
        print(arregloaTramposo)
        
        var tresD:[[[Int]]] = [[[1 ,2 ,3 ,4], [20, 30]],[[100, 200]]]
        print(tresD[0][0][2])
        
        var diccionario:[String:Any] = ["Nombre" : "Adrian", "edad" : 43, "sueldo" : 0.0, "profesion" : "Ingeniero"]
        diccionario["sueldo"] = -20
        diccionario["direccion"] = "Tangamandapio"
        //con el exclamacion se desempaqueta y ya no muestra el optional
        print(diccionario["direccion"]!)
        
    }


}

