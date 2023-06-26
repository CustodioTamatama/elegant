import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'dart:async';

import '../../widgets/my_text.dart';

class LocalizacaoScreen extends StatefulWidget {
  LocalizacaoScreen({super.key});

  static const CameraPosition _posicaoInicial = CameraPosition(
    target: _magoanineCoordenadas,
    zoom: 14.4746,
  );

  static const _magoanineCoordenadas = LatLng(
    -25.8527235,
    32.6231396,
  );
  static const _baixaCoordenadas = LatLng(
    -25.9686,
    32.5691,
  );

  static const _maresCoordenadas = LatLng(
    -25.9211353738,
    32.641447403,
  );

  static const _matolaCoordenadas = LatLng(
    -25.815224,
    32.4920088,
  );

  final _elegantMarkers = {
    const Marker(
      markerId: MarkerId("1"),
      position: LocalizacaoScreen._magoanineCoordenadas,
      infoWindow: InfoWindow(
        title: "Guetto salon",
        snippet: "01",
      ),
    ),
    const Marker(
      markerId: MarkerId("2"),
      position: LocalizacaoScreen._baixaCoordenadas,
      infoWindow: InfoWindow(
        title: "Salão 24",
        snippet: "02",
      ),
    ),
    const Marker(
      markerId: MarkerId("3"),
      position: LocalizacaoScreen._maresCoordenadas,
      infoWindow: InfoWindow(
        title: "Betto's Look",
        snippet: "03",
      ),
    ),
    const Marker(
      markerId: MarkerId("4"),
      position: LocalizacaoScreen._matolaCoordenadas,
      infoWindow: InfoWindow(
        title: "Luisa Silva",
        snippet: "04",
      ),
    ),
  };

  @override
  State<LocalizacaoScreen> createState() => _BalcoesScreenState();
}

class _BalcoesScreenState extends State<LocalizacaoScreen> {
  var _vistaPlana = true;
  var _tipoMapa = MapType.normal;

  final Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: _tipoMapa,
        initialCameraPosition: LocalizacaoScreen._posicaoInicial,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: widget._elegantMarkers,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
          children: [
            FloatingActionButton.extended(
              onPressed: _mudarMapa,
              label: MyText(
                _vistaPlana ? "Vista Satélite" : "Vista Normal",
                color: Theme.of(context).primaryColor,
              ),
              icon: Icon(
                _vistaPlana ? Ionicons.earth : Ionicons.map,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _mudarMapa() {
    if (_vistaPlana) {
      _tipoMapa = MapType.satellite;
      _vistaPlana = false;
    } else {
      _tipoMapa = MapType.normal;
      _vistaPlana = true;
    }

    setState(() {});
  }
}
