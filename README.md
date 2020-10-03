# What is this project

[© Robert Koch-Institut](https://www.rki.de/DE/Content/InfAZ/N/Neuartiges_Coronavirus/Risikogebiete_neu.html) has a page that lists all the international risk areas,
this list is useful to everyone living in Germany, but it's not easy to see which countries are present or not in this list.

This project wants to present the same information in a map, so it will be easier to get this information. 

This project is not related by any means with the German government and do not replace the list from [RKI](https://www.rki.de/DE/Content/InfAZ/N/Neuartiges_Coronavirus/Risikogebiete_neu.html).

# Live App

You can see the application running here: https://lucasfsousa.com/covid-19-risk-areas-rki/

# Project structure

- `.github` contains [GitHub Actions](https://github.com/features/actions), responsible for deploying the app.
- `docs` this folder will be used by [Github Pages](https://pages.github.com/) to host the application, it contains the production code and it will be automatically updated.
- `generate` contains the file `generate/src/scraper.ts` that is responsible to get the current data from RKI and generate `src/risk-areas.ts`.
- `src` contains typescript files responsible to plot the map with the generated data from RKI.

# How to test it locally?

If you want to test it locally, clone the project and execute:
```bash
npm install
npm run start
```

**Note**: When doing this for the first time, please also copy `countries.geojson` to `dist` folder.

But if you prefer test it in a Docker container, clone the project and execute:
```bash
docker-compose up development
```

**Note**: You need to install [Docker](https://docs.docker.com/install/) and [Docker Compose](https://docs.docker.com/compose/install/).

Then access in the browser: http://localhost:1234

# External libraries

- [axios](https://github.com/axios/axios) to download RKI page
- [CheerioJS](https://github.com/cheeriojs/cheerio) to scrap RKI website
- [Openlayer](https://github.com/openlayers/openlayers) to display the map
- [Parcel](https://github.com/parcel-bundler/parcel) to run locally & build

# External data

- [countries.geojson](https://github.com/mikekeda/maps/blob/master/geojson/world.geojson) to plot the map
- [generate/data/world-countries-iso.csv](https://github.com/sueddeutsche/sz-data/blob/master/world-countries/world-countries-iso) to map iso-code-3 and the country name in german.
