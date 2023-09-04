![Captura desde 2023-08-16 18-02-28](https://github.com/pedro-donoso/movieApp/assets/68760595/b3edb60a-96f5-4bdc-beda-cfc8fb1476ec)

# Proceso

### 1 - Creo proyecto en rails 

```rails new movieApp -d postgresql```

```bash
cd movieApp
```

```bash
git add .
```

```bash
git commit -m "primer commit"
```

### 2 - Creo scaffold de las categorías: 

Movie

```bash
rails g scaffold Movie name synopsis director
```

serie (problema camelCase)

```bash
rails g scaffold serie name synopsis director
```

DocumentaryFilm

```bash
rails g scaffold DocumentaryFilm name synopsis director
```

### 3 - Abro vscode y creo terminales especificas:

```bash
code .
```

*terminal*

*postgresql*

*rails server*

### 4 - Inicio base de datos en Postgresql

```bash
sudo service postgresql start
```

### 5 - Creo repositorio en Github

Desde source control en vscode:

acepto todos los cambios

commit

publish branch

repositorio publico

open on GitHub

### 6 - Creo base de datos

desde terminal:

```bash
rails db:create
```

crea 3 bases de datos: 

*movies*

*series*

*documentary_films*

### 7 - Migro bases de datos

```bash
rails db:migrate
```

crea schema

### 8 - Configuro routes

config -> routes.rb
descomento root y defino clave:valor

root "movies#index"

guardo

### 9 - Inicio servidor de rails

```bash
rails s
```

reviso app en localhost

### 10 - Agrego cdn de Bootstrap

css (antes de 'head')

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

js (antes de 'body')
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

### 11 - Agrego Navbar a application.html.erb

obtengo links desde localhost

<%= link_to "Home", root_path %>

### 12 - Agrego la gema Faker

```bash
bundle add faker
```

### 13 Reinicio servidor rails

ctrl + c

```bash
rails s
```

### 14 - Creo seeds

en la carpeta db -> seeds.rb:

20.times do
Movie.create(name: Faker::Movie.title,
			synopsis: Faker::Movie.quote,
			director: Faker::Name.name,
)
end

*en singular para cada elemento*

### 15 - Revisar modelos para ver nombre de las clases:

*Documentary_films cambia formato a DocumentaryFilms*

### 16 - Agrego seed:

```bash
rails db:seed
```
