* [!] BUGFIX: la balle sort de l’écran mdr.

## Adriel

* [x] Intégrer la deuxième paddle dans le jeu.
* [x] Retravailler le système de scoring.
* [x] Proposer une nomenclature sérieuse pour les nodes…
* [x] Implémenter le restart du jeu en fonction du score.
* [x] Implémenter le système de scrolling du fond en fonction du score.
* [ ] Implémenter la fin de partie visuellement ; quand un joueur gagne
  * [x] (80%) la balle s’arrête hors de portée de la paddle dans son mouvement naturel
  * [x] le joueur doit appuyer sur espace pour relancer la balle (toujours selon le mouvement naturel)
  * [x] le score revient alors à zéro (et le fond suit)
  * [ ] une couronne de la couleur du gagnant apparaît au centre de l’écran
* [ ] Implémenter les mécaniques de gameplay
  * [x] (50%) Quand la balle est proche du vertical, elle suit l’axe vertical
  * [?] Quand le joueur n’appuie sur aucune touche, la paddle revient contre l’axe vertical
  * [ ] Système à double vitesse : rapide avec smash, lente avec paddle immobile
* [ ] Renommer les branches session-{luc,adriel}.
* [ ] Réorganiser l’arborescence de fichiers (« shaders » et « materials »).

## Luc

* [x] Rechercher / expérimenter pour les particules.
* [x] Implémenter les graphismes dans godot.
* [x] Implémenter les shaders pour gérer les couleurs des sprites.
* [x] Implémenter un material pour gérer les couleurs des sprites.
* [x] (50%) Réfléchir à l’architecture du code pour les particules.
* [x] (75%) Dessiner la couronne.
* [ ] Implémenter la couronne.
* [ ] Polish
  * [ ] vibrations
  * [ ] freeze
  * [ ] implémenter le système de particules
  * [ ] effet crosscode?
* [ ] Implémenter les autres particules
  * [ ] impact entre « Ball » et « Border »
  * [ ] impact entre « Ball » et « Paddle »
  * [ ] impact but
  * [?] impact but final
  * [?] trail des paddles
* [?] Réécrire la TODO en anglais (je te déteste diana).
