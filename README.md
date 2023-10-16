<a name="readme-top"></a>

<div align="center">

  <img src="https://makeplaceholder.com?size=100&bg=f4bcae&text=app+logo&tcolor=ffffff&as=png" alt="logo" width="150" height="auto" />
  <br/>

 Keep track of all your recipes, ingredients, and inventory in one place with **Deli Recipes**. Find a wide variety of _delicious_ and _popular recipes_, from classic comfort food to international cuisine. Our app makes it easy to *plan* your *meals*, *shop* for *groceries*, and *cook* your *favorite dishes*. Try **Deli Recipes** today and start cooking like a pro.
</div>

<hr width="250px"/><br />

# 📗 Table of Contents

- [💬 About *Deli Recipes*](#about-project)
  - [🛠 How to built the App](#howto-build)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
  - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Usage](#usage)
  - [Run](#run)
  - [Open](#open)
- [👥 Authors](#author)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<hr align="center" width="250px"/><br />

# 🍽️ **Deli Recipes** App <a name="about-project"></a>

**Deli Recipes** is an *App* that allows you to keep track of all your recipes, ingredients, and inventory in one place. It's a fully functional website created with [Rails](https://rubyonrails.org/) where you'll be able to find a wide variety of delicious and popular recipes, from classic comfort food to international cuisine. _Deli Recipes_ makes it easy to plan your meals, shop for groceries, and cook your favorite dishes. Try _Deli Recipes_ today and start cooking like a pro!

<div align="center"><hr width="250px"/></div>

- ### How to build the **Deli Recipes** App <a name="howto-build"></a>
  To _preserve_ the data we are going to create a [PostgreSQL](https://www.postgresql.org/) **Database**, the end result should follow the **ERD Diagram** showed below.

  <p align="center">
    <img src="https://makeplaceholder.com?size=100&bg=f4bcae&text=erd+diagram&tcolor=ffffff&as=png" alt="Entity Relationship Diagram" width="300px" />
  </p>

  For this project we will have full freedom in terms of visual design but we'll need to keep the following wireframes:

  <p align="center">
    <img src="https://makeplaceholder.com?size=100x150&bg=f4bcae&text=food+list&tcolor=ffffff&as=png" alt="List of all foods for a user" width="250px" />
    <img src="https://makeplaceholder.com?size=100x150&bg=f4bcae&text=recipes+list&tcolor=ffffff&as=png" alt="List of all recipes for a user" width="250px" />
    <img src="https://makeplaceholder.com?size=100x150&bg=f4bcae&text=recipe+details&tcolor=ffffff&as=png" alt="Details of a recipe including food in it" width="250px" />
    <img src="https://makeplaceholder.com?size=100x150&bg=f4bcae&text=public+recipes&tcolor=ffffff&as=png" alt="List of all public recipes" width="250px" />
    <img src="https://makeplaceholder.com?size=100x150&bg=f4bcae&text=shopping+list&tcolor=ffffff&as=png" alt="Shopping list for all recipes of user" width="250px" />
  </p>

<div align="center"><hr width="250px"/></div>

## 🛠 Built With <a name="built-with"></a>
- ### Tech Stack <a name="tech-stack"></a>

  <ul>
     <li>
      <a href="https://www.ruby-lang.org/en/">
      <img align="center" width="19" height="auto" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Ruby_logo.svg/198px-Ruby_logo.svg.png?20101129171534" alt="ruby logo" />
      Ruby
      </a>
    </li>
    <li>
      <a href="https://rubyonrails.org/">
      <img align="center" width="19" height="auto" src="app/assets/images/logos/rails-red-logo.svg" alt="ruby logo" />
      Rails
      </a>
    </li>
    <li>
      <a href="https://www.postgresql.org/">
      <img align="center" width="19" height="auto" src="https://wiki.postgresql.org/images/3/30/PostgreSQL_logo.3colors.120x120.png" alt="postgreSQL logo" />
      PostgreSQL
      </a>
    </li>
  </ul>

<div align="center"><hr width="250px"/></div>
<!-- Features -->
- ### Key Features <a name="key-features"></a>

  **Deli Recipes** it's a fully functional website where you'll be able to find a wide variety of delicious and popular recipes, from classic comfort food to international cuisine. Try _Deli Recipes_ today and start cooking like a pro!

  - **Registration** and **Login**, so you can keep your recipes private.
  - **Food list page** to keep track of ingredients, and inventory. It will allow you to _add_, _show_ and _delete_ food/ingredients, required for each of your recipes.
  - **Recipes List page** that will show all your recipes. It will allow you to _add_, _show_ and _delete_ recipes.
  - Create a **General Shopping List** that will show you all missing food required for all your recipes and its total price.
  - It will show a **List of all Public Recipes** from registered users with their names and total prices.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<hr align="right" width="250px"/>

<!-- LIVE DEMO

## 🚀 Live Demo <a name="live-demo"></a>

> Add a link to your deployed project.

- [Live Demo Link](<replace-with-your-deployment-URL>)

<p align="right">(<a href="#readme-top">back to top</a>)</p>
-->
<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy of this project up and running, follow these steps.

- ### Prerequisites

  - `git` installed. Please got to [Getting Started - Installing Git guide](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and follow the steps described for your system to install `git`.
  - `Ruby` installed, you can go to the [Installing Ruby](https://www.ruby-lang.org/en/documentation/installation/) documentation and follow the steps for your computer OS.
  - `Rails` installed, you can follow the [GoRails Tutorial](https://gorails.com/setup/) and follow the steps for your computer OS.
  - `PostgreSQL` installed, you can follow the [PostgreSQL Tutorial](https://www.postgresqltutorial.com/) and follow the steps for your computer OS.

- ### Setup
  Clone this repository to your `local-folder`:
  ```sh
  cd local-folder
  git clone git@github.com:Log-benjamin/Recipe-app.git
  ```
- ### Usage
  In the `local-folder` where you cloned the project, go into the project folder
  ```sh
  cd Recipe-app
  ```
- ### Prepare
  In the `Recipe-app` folder, use the following code to install the app dependencies
  ```rb
  bundle install
  ```
- ### Run
  In the `Recipe-app` folder, use the following code to run the app
  ```rb
  rails server
  ```
- ### Open
  Open your favorite `browser` and type in the address bar
  ```sh
  http://localhost:3000
  ```
<p align="right">(<a href="#readme-top">back to top</a>)</p>
<hr align="right" width="250px"/>

## 👥 Authors <a name="author"></a>
  👤 <b>Binyam Tegene</b>
  <ul>
    <li>
      <a href="https://github.com/Log-benjamin">
      <img align="center" width="18px" src="https://upload.wikimedia.org/wikipedia/commons/2/24/Github_logo_svg.svg" alt="github logo" />
      <b>@luigirazum</b>
      </a>
    </li>
    <li>
    <!-- TODO: Change X-Logo source file -->
      <a href="https://twitter.com/@binyam_tegene">
      <img align="center" width="18px" src="https://drive.google.com/file/d/1rcApglsgc66XnPXRBW8rc1g_ngaVo9TL/view" alt="x logo" />
      <b>@LuigiRazum</b>
      </a>
    </li>
    <li>
      <a href="https://www.linkedin.com/in/binyam-tegene-4b77ab265">
      <img align="center" width="18px" src="https://upload.wikimedia.org/wikipedia/commons/c/ca/LinkedIn_logo_initials.png" alt="linkedin logo" />
      <b>/binyam-tegene-4b77ab265</b>
      </a>
    </li>
  </ul>
  <br />

  👨‍💻 <b>Luis Zubia</b>
  <ul>
    <li>
      <a href="https://github.com/luigirazum">
      <img align="center" width="18px" src="https://upload.wikimedia.org/wikipedia/commons/2/24/Github_logo_svg.svg" alt="github logo" />
      <b>@luigirazum</b>
      </a>
    </li>
    <li>
    <!-- TODO: Change X-Logo source file -->
      <a href="https://twitter.com/LuigiRazum">
      <img align="center" width="18px" src="" alt="x logo" />
      <b>@LuigiRazum</b>
      </a>
    </li>
    <li>
      <a href="https://linkedin.com/in/luiszubia">
      <img align="center" width="18px" src="https://upload.wikimedia.org/wikipedia/commons/c/ca/LinkedIn_logo_initials.png" alt="linkedin logo" />
      <b>/luiszubia</b>
      </a>
    </li>
  </ul>

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<hr align="right" width="250px"/>

## 🔭 Future Features <a name="future-features"></a>

- **Organize** all your recipes, by categories.
- **Create** and **Share** shopping lists, for an individual recipe.
- **Rate** and **review** recipes.
- **Search** for recipes by *ingredient*, *cuisine*, or *occasion*.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<hr align="right" width="250px"/>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, typos, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<hr align="right" width="250px"/>

## ⭐️ Show your support <a name="support"></a>

If you like this project, your support giving a ⭐ will be highly appreciated.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<hr align="right" width="250px"/>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- We would like to thank [Yukihiro “Matz” Matsumoto](http://www.rubyist.net/~matz/) for creating the [Ruby Programming Language](https://www.ruby-lang.org/en/).
- Also thanks [David Heinemeier Hansson](https://en.wikipedia.org/wiki/David_Heinemeier_Hansson) for sharing [Rails](https://rubyonrails.org/) to the world.\
_**Wikipedia:** [Ruby on Rails - History](https://en.wikipedia.org/wiki/Ruby_on_Rails)_

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<hr align="right" width="250px"/>

<!-- FAQ (optional)

## ❓ FAQ <a name="faq"></a>

> Add at least 2 questions new developers would ask when they decide to use your project.

- **[Question_1]**

  - [Answer_1]

- **[Question_2]**

  - [Answer_2]

<p align="right">(<a href="#readme-top">back to top</a>)</p>
-->
<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<hr align="right" width="250px"/>
