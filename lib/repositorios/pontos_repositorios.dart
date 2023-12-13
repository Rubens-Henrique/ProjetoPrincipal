import 'package:flutter/material.dart';

import '../models/ponto.dart';

class PontosRepositorios extends ChangeNotifier {
  final List<Ponto> _pontos = [
    Ponto(
        nome: 'Praça da Liberdade ',
        endereco: 'Praça da Liberdade, s/n - Funcionários, Belo Horizonte - MG',
        foto:
            'https://prefeitura.pbh.gov.br/sites/default/files/noticia/img/2017-09/Pra%C3%A7a%20da%20Liberdade%20Foto%20Divulga%C3%A7%C3%A3o.jpg',
        latitude: -19.932648520891558,
        longitude: -43.93809440239386),
    Ponto(
      nome: 'Mercado Central ',
      endereco: 'Av. Augusto de Lima, 744 - Centro, Belo Horizonte - MG',
      foto:
          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/f5/df/f1/mercado.jpg?w=1200&h=1200&s=1',
      latitude: -19.923024445146915,
      longitude: -43.94314675009581,
    ),
    Ponto(
      nome: 'Mineirao ',
      endereco:
          'Av. Antônio Abrahão Caram, 1001 - São José, Belo Horizonte - MG, 31275-000',
      foto:
          'https://www.cafebarao.com.br/wp-content/uploads/2021/01/Mineirao_1280x720px.jpg',
      latitude: -19.865665173958778,
      longitude: -43.9711636899104,
    ),
    Ponto(
      nome: 'Praça 7 setembro ',
      endereco:
          'Av.Praça Sete de Setembro, s/n - Centro, Belo Horizonte - MG, 30160-041 ',
      foto:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/PracaSete.jpg/220px-PracaSete.jpg',
      latitude: -19.91890286780074,
      longitude: -43.9386505610734,
    ),
    Ponto(
      nome: 'Palacio das artes',
      endereco: '	Avenida Afonso Pena, 1537 - CEP: 30130-004 - CENTRO',
      foto:
          'https://soubh.uai.com.br/uploads/place/image/1382/main_palacio-das-artes-20141013191744.jpg',
      latitude: -19.92539783066577,
      longitude: -43.93363502059448,
    ),
    Ponto(
      nome: 'Praça do papa ',
      endereco:
          'Praça do Papa - Praça Gov. Israel Pinheiro - Mangabeiras, Belo Horizonte - MG, Brasil',
      foto:
          'https://s2-g1.glbimg.com/nbfIl6MUIcfQsIfFqtuJFAny2xg=/1200x/smart/filters:cover():strip_icc()/s.glbimg.com/jo/g1/f/original/2017/09/20/pracapapa.jpg',
      latitude: -19.95602435437072,
      longitude: -43.9150554915329,
    ),
    Ponto(
      nome: 'Mirante Mangabeiras ',
      endereco:
          'R. Pedro José Pardo, 1000 - Mangabeiras, Belo Horizonte - MG, 47512-000',
      foto:
          'https://lh5.googleusercontent.com/p/AF1QipPECPcH3Ml6A5xTcgjI0DLaO0mIe93vBzSOT4w_=w408-h306-k-no',
      latitude: -19.952538646461672,
      longitude: -43.912905208747446,
    ),
    Ponto(
        nome: 'Igrejinha da Pampulha  ',
        endereco:
            'igreja da pampulha - São Luiz, Belo Horizonte - MG, 31365-450',
        foto:
            'https://lh5.googleusercontent.com/p/AF1QipPZ4997rgP9AnJmZ-j9gvPtblutug48qk6mBrnt=w425-h240-k-no',
        latitude: -19.858355136433783,
        longitude: -43.979030833044185),
    Ponto(
      nome: 'Museu Mineiro  ',
      endereco:
          'Av. João Pinheiro, 342 - Lourdes, Belo Horizonte - MG, 30130-180',
      foto:
          'https://lh5.googleusercontent.com/p/AF1QipNdnzMJUt4zjzcM3sZ8WtD2o5lP_UMFy28y6boa=w426-h240-k-no',
      latitude: -19.927878215367762,
      longitude: -43.93721205429713,
    ),
    Ponto(
      nome: 'Casa Kubitschek',
      endereco:
          'Av. Otacílio Negrão de Lima, 4188 - Bandeirantes (Pampulha), Belo Horizonte - MG, 03165-450',
      foto:
          'https://lh5.googleusercontent.com/p/AF1QipMC4MHFltjdSZ2Ju7Jaq47EVO9Amp012LW2AEme=w426-h240-k-no',
      latitude: -19.854863187653926,
      longitude: -43.98024693681528,
    ),
    Ponto(
      nome: 'Jardim botanico ',
      endereco: 'Bandeirantes (Pampulha), Belo Horizonte - MGil',
      foto:
          'https://lh5.googleusercontent.com/p/AF1QipP0y8ACXA9Rikoz4L94aOnMDIwUo_oNJDclVdHS=w408-h306-k-no',
      latitude: -19.857252887128986,
      longitude: -44.006967005295756,
    ),
    Ponto(
      nome: 'Lago de Furnas - Capitólio MG ',
      endereco: 'MG-050, 1 - Zona Rural, Capitólio - MG, 37930-000',
      foto:
          'https://lh5.googleusercontent.com/p/AF1QipPgAAbPz74q0WjKpt-H_LwlwsZleJ2wMAHP_lbz=w408-h510-k-no',
      latitude: -20.59432,
      longitude: -46.06476,
    ),
    Ponto(
      nome: 'Arena MRV ',
      endereco:
          'Rua Cristina Maria de Assis, 202 - Califórnia, Belo Horizonte - MG, 30855-440',
      foto:
          'https://lh5.googleusercontent.com/p/AF1QipOzrMGb5Shgul6suldo0dLnBMtVKFlkvO9ZG8FK=w408-h350-k-no',
      latitude: -19.93044,
      longitude: -44.01724,
    ),
  ];

  List<Ponto> get pontos => _pontos;
}
