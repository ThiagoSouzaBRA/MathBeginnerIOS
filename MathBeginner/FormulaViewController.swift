//
//  FormulaViewController.swift
//  MathBeginner
//
//  Created by Aluno Mack on 20/09/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit

class FormulaViewController: UIViewController {

    @IBOutlet weak var DescricaoTexto: UITextView!
    
    @IBOutlet weak var ImagemFormula: UIImageView!
    
    @IBOutlet weak var ImagemExemplo: UIImageView!
    
    var subtopicos = [["Triangulo","Triangulo Retangulo","Quadrado","Retangulo"],
                      ["Polinomios","Fração","Exponenciação","Radiação"],
                      ["Funções Trigonometrica","Lei das Tangentes" ,"Lei dos Senos" ,"Lei dos Cossenos"],
                      ["Equação Linear", "Equação de 2 Grau","Equação Exponencial"],
                      ["Limite","Derivada"]]
    
    var descricaotopicos = [[
        ["Triângulo é um polígono de três lados e três ângulos. Há sete tipos de triângulos e sua classificação depende da disposição dos ângulos podendo ser: isósceles, equilátero, escaleno, retângulo, obtuso, agudo ou equiângulo."],
        ["Triângulo retângulo é um triângulo que possui um ângulo reto e outros dois ângulos agudos, para tanto basta que tenha um ângulo reto (90°), pois a soma dos três ângulos internos é igual a um ângulo raso (180°). Em um triângulo retângulo, sabendo-se as medidas de dois lados ou a medida de um lado mais a medida de um ângulo agudo, é possível calcular a medida dos demais lados e ângulos."],
        ["O quadrado é um polígono convexo que possui quatro lados. Em outras palavras, é uma figura geométrica plana que possui quatro lados congruentes e quatro ângulos retos. Dessa maneira, é chamado também de quadrilátero."],
        ["O retângulo é uma figura geométrica plana formada por quatro lados (quadrilátero) e apresenta os quatro ângulos internos congruentes (mesma medida) e retos (90°)."]],
                      [["Os polinômios são expressões algébricas formadas por números (coeficientes) e letras (partes literais). As letras de um polinômio representam os valores desconhecidos da expressão."],
                       ["Fração é a forma de dividir alguma coisa através da razão de dois números inteiros. Dessa forma, nada mais é do que uma divisão onde o dividendo é numerador e o divisor é o denominador."],
                       ["Exponenciação. da mesma forma que a multiplicação de n por a pode ser vista como uma soma de n parcelas iguais a a, ou seja, O expoente geralmente é indicado à direita da base, aparecendo sobrescrito ou separado da base por um circunflexo. Pode-se ler ancomo a elevado à n-ésima potência, ou simplesmente a elevado a n."],
                       ["A radiciação é a operação inversa da potenciação. ... O símbolo utilizado para representar a raiz enésima de x é e é chamado de radical. Nesse símbolo, x é o radicando e n é o índice."]],
                      [["As funções trigonométricas são as funções relacionadas aos triângulos retângulos, que possuem um ângulo de 90°. São elas: seno, cosseno e tangente."],
                       ["O círculo trigonométrico ou círculo unitário é usado no estudo das funções trigonométricas: seno, cosseno e tangente."],
                       ["A Lei dos Senos serve para relacionar o seno do ângulo de um triângulo qualquer com o lado oposto a este ângulo."],
                       ["A Lei dos Cossenos diz que podemos encontrar a medida de um lado de um triângulo, somando os lados opostos a ele e subtraindo pelo dobro do produto entre os lados opostos e o cosseno do ângulo, também, dos lados opostos."]],
                      [["Equaçao com um certo numero de variaveis onde cada termo não pode ter grau diferente de 1."],
                       ["A equação do segundo grau recebe esse nome porque é uma equação polinomial cujo termo de maior grau está elevado ao quadrado."],
                       ["As equações exponenciais são aquelas que possuem pelos menos uma incógnita no expoente e bases positivas diferentes de 1."]],
                      [["O limite de uma função é um conceito fundamental em cálculo e análise sobre o comportamento desta função quando próxima a um valor particular de sua variável independente."],
                       ["No cálculo, a derivada em um ponto de uma função representa a taxa de variação instantânea de em relação a neste ponto."]],
        ]
    
    var id:Int?
    
    var subid:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if let identificador = id,let identificado_subid = subid
        {
            self.navigationItem.title = subtopicos[identificador][identificado_subid]
            
            DescricaoTexto?.text = descricaotopicos[identificador][identificado_subid][0] as! String
            
            ImagemFormula?.image = UIImage(named: "\(subtopicos[identificador][identificado_subid])Area")
            
            ImagemExemplo?.image = UIImage(named: "\(subtopicos[identificador][identificado_subid])Exemplo")
            
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
