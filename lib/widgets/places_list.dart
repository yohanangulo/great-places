import 'package:flutter/material.dart';
import 'package:places/extensions/extensions.dart';
import 'package:places/models/place.dart';
import 'package:places/screens/place_detail.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({
    super.key,
    required this.places,
  });

  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return Center(
        child: Text(
          'No places added yet',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
      );
    }

    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (context, index) {
        final Place place = places[index];
        return ListTile(
          leading: CircleAvatar(
            radius: 26,
            backgroundImage: FileImage(place.image),
          ),
          title: Text(
            place.title,
            style: context.textTheme.titleMedium!.copyWith(
              color: context.theme.colorScheme.onBackground,
            ),
          ),
          subtitle: Text(
            place.location.address,
            style: context.textTheme.bodySmall!.copyWith(
              color: context.theme.colorScheme.onBackground,
            ),
          ),
          onTap: () {
            context.navigator.push(
              MaterialPageRoute(builder: (_) => PlaceDetailScreen(place: place)),
            );
          },
        );
      },
    );
  }
}
