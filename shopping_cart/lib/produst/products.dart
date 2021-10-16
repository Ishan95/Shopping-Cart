import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Fog Lamp",
    price: 5000,
    size: 12,
    description: "1PC Car Lights Work Light 60W Led Bar Offroad 4x4 Accessories Motorcycle Fog Lamp 6000K 12V",
    image: "assets/images/FogLamp/Fog Lamp.jpg",
    color: Colors.white),
  Product(
    id: 2,
    title: "NAVIFORCE Mens Watches",
    price: 3500,
    size: 8,
    description: "NAVIFORCE Mens Watches Top Luxury Brand Fashion Sport Watches Men Waterproof Quartz Clock Male Army Military Leather Wrist Watch",
    image: "assets/images/watches/watches.jpg",
    color: Colors.white),
  Product(
    id: 3,
    title: "playing Cards",
    price: 575,
    size: 10,
    description: "54Pcs/Set Magic Playing Cards Waterproof US Dollar Pattern Poker Table Game Playing Card Collection Card Poker Holder",
    image: "assets/images/playingCard/playing Card.jpg",
    color: Colors.white),
  Product(
    id: 4,
    title: "ToolKit",
    price: 4299,
    size: 11,
    description: "46pcs Socket Ratchet Car Repair Tool Wrench Set Head Ratchet Pawl Socket Spanner Screwdriver Professional Metalworking Tool Kit",
    image: "assets/images/ToolKit/ToolKit.jpg",
    color: Colors.white
  ),
];