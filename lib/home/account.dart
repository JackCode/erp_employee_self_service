import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: const <Widget>[
        ParallelContainers(),
        Positioned(top: 20, child: Avatar()),
      ],
    );
  }
}

class ParallelContainers extends StatelessWidget {
  const ParallelContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            color: const Color.fromRGBO(143, 99, 137, 1),
            height: 60,
          ),
          Container(
            color: Colors.white,
            height: 140,
          ),
        ],
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularProfileAvatar(
          '',
          backgroundColor: const Color.fromRGBO(196, 171, 192, 1),
          borderWidth: 10,
          radius: 65,
          child: const Icon(
            Icons.face_rounded,
            size: 75,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Walters, Annette',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        )
      ],
    );
  }
}
