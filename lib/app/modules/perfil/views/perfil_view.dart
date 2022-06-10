import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_table/responsive_table.dart';

import '../controllers/perfil_controller.dart';

class PerfilView extends GetView<PerfilController> {
  @override
  Map<String, dynamic> source = {"Nome": "Eduardo", "NumDoc": "12345678900"};
  Map<String, dynamic>? _selecteds;

  Widget build(BuildContext context) {
    var i = 1;
    return Scaffold(
        appBar: AppBar(
          title: Text('PerfilView'),
          centerTitle: true,
        ),
        body: Center(
            child: Card(
          elevation: 1,
          shadowColor: Colors.black,
          clipBehavior: Clip.none,
          child: ResponsiveDatatable(title: Text("Teste"), expanded: [
            true
          ], selecteds: [
            source
          ], reponseScreenSizes: [
            ScreenSize.xs
          ], source: [
            source
          ], headers: [
            DatatableHeader(
                text: "Nome",
                value: "Nome",
                show: true,
                sortable: true,
                textAlign: TextAlign.center),
            DatatableHeader(
                text: "Num Doc",
                value: "NumDoc",
                show: true,
                flex: 1,
                sortable: true,
                textAlign: TextAlign.left),
            DatatableHeader(
                text: "SKU",
                value: "sku",
                show: true,
                sortable: true,
                textAlign: TextAlign.center),
            DatatableHeader(
                text: "Category",
                value: "category",
                show: true,
                sortable: true,
                textAlign: TextAlign.left),
            DatatableHeader(
                text: "Price",
                value: "price",
                show: true,
                sortable: true,
                textAlign: TextAlign.left),
            DatatableHeader(
                text: "Margin",
                value: "margin",
                show: true,
                sortable: true,
                textAlign: TextAlign.left),
            DatatableHeader(
                text: "In Stock",
                value: "in_stock",
                show: true,
                sortable: true,
                textAlign: TextAlign.left),
            DatatableHeader(
                text: "Alert",
                value: "alert",
                show: true,
                sortable: true,
                textAlign: TextAlign.left),
          ]),
        )));
  }
}
