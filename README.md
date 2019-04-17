# I Need Space

This was my last solo project of my time at Turing School of Software and Design.
I was tasked to make an app in 5 days and consume the NASA API https://api.nasa.gov/index.html.
As soon as I got the assignment I was super excited, my child had beed loving space for the last few months and so I had a lot of excitement about it.
Few months back I bought said child (who is autistic) a shirt that said "I NEED SPACE" with galaxies and starts behind it and I instantly thought that would be the prefect name for this little app of mine, and so it was settled: "I Need My Space" was born.

This is the FrontEnd App I created consuming this API https://maddyg91.github.io/INeedSpace-FE/home

This Api lets you query the selected space picture of the day, favorite it and then see all your favorites. It also allows you to delete favorites you do not want to see anymore. You can also search for images in the NASA database!

In the future I would love to be able to implement more search endpoints.


## Getting started

Clone this repository to your local machine by running this command:
```
   git clonehttps://github.com/maddyg91/INeedSpace-BE
```
then:
```
   cd INeedSpace-BE
```
You should now be in the correct directory.

Make sure your ruby version is `2.4.5`, you can check this by typing `ruby -v` in your terminal. If your version is different we suggest updating to version `2.4.5`.

After run these commands:
```
  bundle
  rake db:{drop,create,migrate,seed}
```
You should now be good to start exploring!

## Endpoints

The base URL you can use is
 https://enigmatic-ocean-44786.herokuapp.com or http://localhost:3000 if you are running your server locally with `rails s`

The available endpoints are:

###  get api/v1/apod

```
{
    "data": {
        "id": "1",
        "type": "image",
        "attributes": {
            "copyright": "Utkarsh Mishra",
            "date": "2019-04-16",
            "explanation": "Strange shapes and textures can be found in neighborhood of the Cone Nebula. The unusual shapes originate from fine interstellar dust reacting in complex ways with the energetic light and hot gas being expelled by the young stars.  The brightest star on the right of the featured picture is S Mon, while the region just below it has been nicknamed the Fox Fur Nebula for its color and structure. The blue glow directly surrounding S Mon results from reflection, where neighboring dust reflects light from the bright star. The red glow that encompasses the whole region results not only from dust reflection but also emission from hydrogen gas ionized by starlight. S Mon is part of a young open cluster of stars named NGC 2264, located about 2500 light years away toward the constellation of the Unicorn (Monoceros).   Even though it points right at S Mon, details of the origin of the mysterious geometric Cone Nebula, visible on the far left, remain a mystery.",
            "url": "https://apod.nasa.gov/apod/image/1904/ConeFoxfur_Mishra_960.jpg",
            "hdurl": "https://apod.nasa.gov/apod/image/1904/ConeFoxfur_Mishra_1687.jpg",
            "title": "In the Vicinity of the Cone Nebula",
            "media_type": "image"
        }
    }
}
```
###  post '/api/v1/favorites'

this endpoint requires multiple params and they all should be inputed as string:
  - title
  - url
  - hdurl
  - explanation
  - media_type ( this can only have two values image or video)

 an example response looks like this:
```
{
    "data": {
        "id":  3 ,
        "type": "favorite",
        "attributes": {
            "explanation": "explanation",
            "url": "imageurl.com",
            "hdurl": "imagehdurl.com",
            "title": "stars",
            "media_type": "image"
        }
    }
}
```
### get '/api/v1/favorites'

an example response looks like this:

```
{
    "data": [
        {
            "id": "1",
            "type": "favorites",
            "attributes": {
                "explanation": "Rigil Kentaurus is the bright star near the top of this
broad southern skyscape. Of course it's probably better known as Alpha Centauri, nearest star system to the Sun. Below it sprawls a dark nebula complex. The obscuring interstellar dust clouds include Sandqvist catalog clouds 169 and 172 in silhouette against the rich starfields along the southern Milky Way. Rigil Kent is a mere 4.37 light-years away, but the dusty dark nebulae lie at the edge of the starforming Circinus-West molecular cloud about 2,500 light-years distant. The wide-field of view spans over 12 degrees (24 full moons) across southern skies.",
                "url": "https://apod.nasa.gov/apod/image/1904/sandqvist169_colombari1024.jpg",
                "hdurl": "https://apod.nasa.gov/apod/image/1904/sandqvist169_colombari.jpg",
                "title": "Rigil Kentaurus and Sandqvist 169",
                "media_type": "image"
            }
        },
        {
            "id": "3",
            "type": "favorites",
            "attributes": {
                "explanation": "Do you see the dolphin-shaped cloud on Jupiter? The cloud was visible last year during perijove 16, the sixteenth time that NASA's robotic spacecraft Juno passed near Jupiter since it arrived in mid-2016.  During each perijove, Juno passes near a slightly different part of Jupiter's cloud tops.  The dolphin shape may be surprising but is not scientifically significant -- clouds on Jupiter and Earth are constantly shifting and can temporarily mimic many familiar shapes. The cloud appears in Jupiter's South Temperate Belt (STB), a band of dark and dropping clouds that rings the planet and also contains Oval BA, dubbed Red Spot Jr.  The featured image was digitally processed to enhance color and contrast.  Juno's next swoop near Jupiter -- perijove 20 -- will occur on late May.",
                "url": "https://apod.nasa.gov/apod/image/1904/JupiterDolphin_JunoEichstadt_1080.jpg",
                "hdurl": "https://apod.nasa.gov/apod/image/1904/JupiterDolphin_JunoEichstadt_3064.jpg",
                "title": "Enhanced: The Dolphin Cloud on Jupiter",
                "media_type": "image"
            }
        }]
}
```
###  delete "/api/v1/favorites/:id"

This endpoint takes an id as it's wildcard (where :id is) and it will delete the favorite you selected

###  get "/api/v1/imagesearch" ###

This endpoint allows you to query the NASA image database.
It takes a param of `q` as a string

An example of a response where q = "mars" looks like this:

```
{
    "data": [
        {
            "id": 1,
            "attributes": {
                "href": "https://images-assets.nasa.gov/image/PIA07081/PIA07081~thumb.jpg",
                "title": "Mars Rover Studies Soil on Mars"
            }
        },
        {
            "id": 2,
            "attributes": {
                "href": "https://images-assets.nasa.gov/image/PIA04778/PIA04778~thumb.jpg",
                "title": "Mars in Color"
            }
        }]
}
```
## Built With: Technologies and Versions
* [Ruby 2.4.5](https://ruby-doc.org/core-2.5.1/)
* [Rails 5.2.3](https://guides.rubyonrails.org/)
* [Trello for Project Management](https://trello.com/b/LXy7rW95/i-need-space)
* [Faraday](https://github.com/lostisland/faraday)
* [Heroku](https://www.heroku.com/)
* [RSpec](http://rspec.info/)
* [vcr](https://github.com/vcr/vcr)

## Authors

**[Maddie Jones](https://github.com/maddyg91)**
