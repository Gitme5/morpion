# Fait un require de tous les Gems présents dans le GemFile.
# Nécéssite un Bunble install à la racine
require 'bundler'
Bundler.require

# Permet de ne pas spécifier le Path de chaque fichier
$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/application'
require 'app/board'
require 'app/board_case'
require 'app/game'
require 'app/player'
require 'app/show'


# On crée une instance de la classe Application
Application.new.perform

