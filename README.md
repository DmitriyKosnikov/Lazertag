# README

# Установка

## клонирование
Заходишь в терминал пишешь 
'''bash
git clone git@github.com:DmitriyKosnikov/Lazertag.git
cd Lazertag
'''
После этого следуешь инструкциям и если будет спрашивать какой branch выбрать то выбираешь main.

## установкка всего 
Заходишь и пишешь команды
'''bash
bundle install
yarn install
yarn build
bin/rails db:create
bin/rails db:migrate
'''

# Cущности:

## User (Пользователь)
* first_name
* last_name
* wins_count (default: 0)
* games_count (default: 0)
* winrate (можно вычислять на лету)

## Game (Игра)
* date
* title

## Team (Команда)
* name
* game_id
* is_winner (boolean, можно использовать вместо связи с winning_team_id в Game)

## teams_users
* team_id
* user_id

# Связи
## users-teams
Многие ко многим через teams_users
## games-teams
один ко многим одна игра - 2 команды
## games-users
многие ко многим через teams


