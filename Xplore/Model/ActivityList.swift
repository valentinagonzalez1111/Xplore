//
//  ActivityList.swift
//  Xplore
//
//  Created by KEVIN on 22/03/2023.
//

import Foundation
import CoreLocation

struct Activity: Identifiable {
    
    var id = UUID()
    var name: String
    var image: String
    var distances: Int
    var description: String
    var categories: [Int]
    var coordinate: CLLocationCoordinate2D
}

struct ActivityCategory {
    let name: String
    let activities: [Activity]
}

let activityCategories: [ActivityCategory] = [
    ActivityCategory(name: "Visites", activities: activities.filter { $0.categories.contains(0) }),
    ActivityCategory(name: "Natures", activities: activities.filter { $0.categories.contains(1) }),
    ActivityCategory(name: "Festivals", activities: activities.filter { $0.categories.contains(2) })
]

let activities = [
    
    Activity(name: "Pic de Nore", image: "pic_de_nore", distances: 89, description: "Point culminant de la Montagne Noire, le pic de Nore s’élève à 1 211 mètres d’altitude et offre un panorama incroyable. A pied ou à vélo, prenez de l’altitude et venez-vous oxygéner sur le plus haut sommet de la Montagne Noire : le Pic de Nore. Celui-ci, situé en surplomb de Mazamet, sur la ligne de crête séparant le Tarn et l’Aude, offre des points de vue magnifiques à 360°. Alors, prêt(s) pour une belle escapade ?", categories: [1], coordinate: (CLLocationCoordinate2D(latitude: 43.424445, longitude: 2.461937))),
    
    Activity(name: "Cité de Carcassonne", image: "cite_de_carcassonne", distances: 55, description: "En pays cathare, au cœur de la cité de Carcassonne, découvrez le château comtal et les remparts classés au patrimoine mondial de l'humanité par l'Unesco.", categories: [0], coordinate: CLLocationCoordinate2D(latitude: 43.206515, longitude: 2.364093)),
    
    Activity(name: "Dune du Pilat", image: "dune_du_pilat", distances: 379, description: "La dune du Pilat est une dune située en Gironde à l'entrée du bassin d'Arcachon, sur la côte d'Argent, en bordure du massif forestier des Landes de Gascogne, dans le sud-ouest de la France. C'est la plus haute dune d’Europe.", categories: [1], coordinate: CLLocationCoordinate2D(latitude: 44.597758, longitude: -1.206551)),
    
    Activity(name: "Pic du Canigou", image: "pic_du_canigou", distances: 268, description: "Le pic du Canigou est le plus haut sommet oriental de la chaîne des Pyrénées, sur le massif du Canigou. Il est situé dans le Conflent, département des Pyrénées-Orientales, et culmine à 2 784 mètres d'altitude.", categories: [1], coordinate: CLLocationCoordinate2D(latitude: 42.518905, longitude: 2.45656)),
    
    Activity(name: "Lac d'Annecy", image: "lac_d'annecy", distances: 643, description: "Le lac d'Annecy est situé en Haute-Savoie, en France. Alimenté par des sources de montagne, il est célèbre pour la propreté de ses eaux. À son extrémité nord se trouve Annecy, qui comporte une vieille ville médiévale avec des canaux et des ponts. Le château de Menthon-Saint-Bernard, qui date du XIIIe siècle, est perché au-dessus du village du même nom, en bord de lac. La ville de Saint-Jorioz comporte une plage prisée. Plusieurs sentiers bordent le lac, et des bateaux de plaisance naviguent en été.", categories: [1], coordinate: CLLocationCoordinate2D(latitude: 45.849372, longitude: 6.171277)),
    
    Activity(name: "Cathédrale de Notre Dâme", image: "cathedrale_notre_dame_paris", distances: 690, description: "La cathédrale Notre-Dame de Paris, communément appelée Notre-Dame, est l'un des monuments les plus emblématiques de Paris et de la France. Elle est située sur l'île de la Cité et est un lieu de culte catholique, siège de l'archidiocèse de Paris, dédié à la Vierge Marie.", categories: [0], coordinate: CLLocationCoordinate2D(latitude: 48.4478125, longitude: 1.4879099)),
    
    Activity(name: "Lac de la Ramée", image: "lac_de_la_ramée", distances: 60, description: "Cette randonnée autour de Toulouse prend place au lac de la Ramée. Apprécié des petits (et des grands) pour sa base de loisir, ce plan d’eau aménagé avec soin autorise la baignade entre juillet et août seulement. De nombreuses activités y sont organisées : kayak, roller, golf, modélisme, pêche…Vous pouvez tout simplement y pique-niquer après avoir longé ses rives paisibles où se reflètent les arbres typiques de la région. Facilement accessible depuis la Ville rose, le lac de la Ramée constitue une promenade agréable en mode détente. Cool, non ?", categories: [1], coordinate: CLLocationCoordinate2D(latitude: 43.5699, longitude: 1.34909)),
    
    Activity(name: "Cascade d'Ars", image: "cascade_d'ars", distances: 60, description: "La cascade d'Ars est une cascade naturelle des Pyrénées située dans le Couserans en Ariège, à 1 380 m d'altitude. Elle est dans le périmètre du parc naturel régional des Pyrénées ariégeoises.", categories: [1], coordinate: CLLocationCoordinate2D(latitude: 42.762805, longitude: 1.361873)),
    
    Activity(name: "En Rock", image: "festival_rock_en_seine", distances: 268, description: "Rock en Seine est un festival qui a lieu dans le parc de Saint-Cloud aux portes de Paris, au cœur de jardins historiques dessinés par Le Nôtre.", categories: [2], coordinate: CLLocationCoordinate2D(latitude: 48.846131, longitude : 2.217622)),
    
    Activity(name: "La chanson de café", image: "chanson_de_cafe", distances: 89, description: "Organisé par la Ville de Pornic pour la première fois en 2004, ce tremplin musical est devenu un temps fort de la saison culturelle. L'originalité de ce rendez-vous réside dans l'ambiance intimiste et conviviale des cafés de la ville. Les artistes sélectionnés, tous auteurs, compositeurs et interprètes de chansons françaises doivent convaincre le public sur la seule valeur de leurs textes et de leurs musiques. Qualité de la programmation et souci de l'excellence des prestations des candidats sont les maîtres mots d'un week-end gratuit fait de musique, de détente et de partage.", categories: [2], coordinate: CLLocationCoordinate2D(latitude: 47.11527, longitude: -2.10401)),
    
    Activity(name: "Festival les Z'Illumines", image: "les_z'illumines", distances: 327, description: "Donnez du son à notre territoire ! Festival Les Z'illuminés en Morbihan Sud. Rdv les 19 & 20 Mai 2023, à Le Guerno Une programmation de qualité, éclectique pour rassembler un public intergénérationnel. Sur scène, se rencontreront cette année, artistes locaux et de départements voisins ainsi que plusieurs têtes d'affiche d'envergure nationale. Un week-end animé au cœur du magnifique bourg de Le Guerno.", categories: [2], coordinate: CLLocationCoordinate2D(latitude: 47.582736, longitude: -2.407419)),
    
    Activity(name: "Basilique du Sacré-Coeur de Montmartre", image: "basilique_montmatre", distances: 769, description: "La basilique du Sacré-Cœur, consacrée en 1919, est l’un des monuments emblématiques de Paris. Située au sommet de la butte Montmartre, elle offre une des plus belles vues panoramiques de la capitale, à 130 mètres d’altitude. De style romano-byzantin, la basilique est reconnaissable à sa couleur blanche. A l’intérieur de l’édifice, le plafond est décoré de la plus grande mosaïque de France, mesurant 480 m². La crypte mérite aussi une visite. Et pour prendre encore plus de hauteur, le visiteur peut accéder au dôme, d’où la vue de Paris à 360° est magnifique. À quelques pas de la basilique, se trouvent la place du Tertre, le quartier des Abbesses aux petites rues escarpées, et au pied de la butte, le célèbre cabaret du Moulin Rouge.", categories: [0], coordinate: CLLocationCoordinate2D(latitude: 48.886806, longitude: 2.343015)),
    
    Activity(name: "Parc de Lunaret", image: "parc_de_lunaret", distances: 136, description: "Le parc zoologique de Montpellier, qui prend place dans l'ensemble du parc de Lunaret, est un parc zoologique français situé en région Occitanie, au nord de la ville de Montpellier.", categories: [0], coordinate: CLLocationCoordinate2D(latitude: 43.639747, longitude: 3.874343)),
    
    Activity(name: "Passerelle de Mazamet", image: "passerelle_mazamet", distances: 78, description: "La passerelle de Mazamet ou passerelle d'Hautpoul est un ouvrage d'art piéton situé à Mazamet, en France. Elle est construite en 2018 et s'étend sur 140 mètres de long.", categories: [0], coordinate: CLLocationCoordinate2D(latitude: 43.477917, longitude: 2.377807)),
    
    Activity(name: "Rock & Cars", image: "rock_&_cars", distances: 98, description: "Au programme du Festival Rock'&'cars 2023, découvrez Little Bob Blues Bastards, Dr Feelgood, Bijou, Au Bonheur Des Dames, Mylkia's Soul Brothers, Bernard Sellam en concert à Lavaur.", categories: [2], coordinate: CLLocationCoordinate2D(latitude: 44.61297, longitude: 1.023052)),
    
    Activity(name: "Festi'Vaux 2023", image: "festivaux", distances: 479, description: "Au cœur de l'été, Festi'Vaux est un festival de musiques actuelles gratuit qui se déroule dans le théâtre de verdure du Parc de l'Hôtel de Ville.", categories: [2], coordinate: CLLocationCoordinate2D(latitude: 45.645335, longitude: -1.06234)),
    
    Activity(name: "Ecaussysteme", image: "ecaussyteme", distances: 180, description: "2023, la fête sera intense ! La scène de la prairie du Touron que vous connaissez bien, ne sera plus seule sur la planète Ecaussystème. Nous sommes très heureux de vous présenter sa petite sœur, une nouvelle structure qui nous permet de vous proposer 21 artistes sur 3 jours, contre 14 auparavant. 7 groupes par soir, pour encore plus de plaisir, de diversité, de partage et de fête.", categories: [2], coordinate: CLLocationCoordinate2D(latitude: 43.652286, longitude: 3.551202)),
    
    Activity(name: "Rocamadour", image: "rocamadour", distances: 542, description: "Rocamadour est un petit village en bord de falaise, au sud du centre de la France. Il est connu pour sa Cité religieuse, un complexe d'édifices religieux accessible par le Grand escalier. Parmi ces bâtiments se trouvent la chapelle Notre-Dame, avec sa statue de la Vierge noire, et la basilique Saint-Sauveur, d'architecture romane-gothique. La forêt des singes, un parc où les macaques vivent en liberté, se situe au nord-est. Le parc ornithologique du Rocher des aigles se trouve à l'ouest", categories: [0], coordinate: CLLocationCoordinate2D(latitude: 44.799547, longitude: 1.618171))
]

