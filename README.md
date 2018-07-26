# Présentation

## Créateur

Bastien Willet


## Comment lancer le programme ?

1. Positionner le terminal à la racine du dossier the_gossip_project
2. Lancer $ bundle install
3. Lancer $ rails db:migrate
4. Lancer $ rails db:seed
5. Ouvrir db/development.sqlite3 avec un lecteur de base de données SQLite


# Fonctionnement


## Détail des migrations (voir dossier db/migrate)

- 20180726201719_create_users.rb : créé la table user et son modèle
- 20180726201725_create_cities.rb : créé la table city et son modèle
- 20180726201731_create_gossips.rb : créé la table gossip et son modèle
- 20180726201741_create_tags.rb : créé la table tag et son modèle
- 20180726203749_create_join_table_gossip_user.rb : migration autogénérée par $ rails g migration CreateJoinTableGossipUser gossip user. Créée la table intermédiaire de la relation n dans n pour créer les likes
- 20180726205730_create_private_messages.rb : créé la table PM et son modèle
- 20180726212117_create_comments.rb : créé la table comment et son modèle
- 20180726213036_create_comment_comments.rb : créé la table comment de comment et son modèle


## Gems ruby utilisées

voir Gemfile
