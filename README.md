<a name="readme-top"></a>

<div align="center">

  <img src="app\assets\images\logo.PNG" alt="logo" width="150" height="auto" />
  <br/>

 Keep track of all your recipes, ingredients, and inventory in one place with **Deli Recipes**. Find a wide variety of _delicious_ and _popular recipes_, from classic comfort food to international cuisine. Our app makes it easy to *plan* your *meals*, *shop* for *groceries*, and *cook* your *favorite dishes*. Try **Deli Recipes** today and start cooking like a pro.
</div>

<div align="center"><hr width="250px"/></div>

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

<div align="center"><hr width="250px"/></div>

# 🍽️ **Deli Recipes** App <a name="about-project"></a>

**Deli Recipes** is an *App* that allows you to keep track of all your recipes, ingredients, and inventory in one place. It's a fully functional website created with [Rails](https://rubyonrails.org/) where you'll be able to find a wide variety of delicious and popular recipes, from classic comfort food to international cuisine. _Deli Recipes_ makes it easy to plan your meals, shop for groceries, and cook your favorite dishes. Try _Deli Recipes_ today and start cooking like a pro!

<div align="center"><hr width="250px"/></div>

- ### How to build the **Deli Recipes** App <a name="howto-build"></a>
  To _preserve_ the data we are going to create a [PostgreSQL](https://www.postgresql.org/) **Database**, the end result should follow the **ERD Diagram** showed below.

  <p align="center">
    <img src="https://ik.imagekit.io/dqd3uh1at/deli_recipes_erd_diagram.png?updatedAt=1697474900004" alt="Entity Relationship Diagram" width="500px" />
  </p>

  For this project we will have full freedom in terms of visual design but we'll need to keep the following wireframes:

  <table>
    <tr>
      <td align="center">
        <p>Foods Page</p>
        <img src="https://ik.imagekit.io/dqd3uh1at/deli_recipes_foods_page.png?updatedAt=1697474899471" alt="List of all foods for a user" width="375px" />
      </td>
      <td align="center">
        <p>General Shopping List Page</p>
        <img src="https://ik.imagekit.io/dqd3uh1at/deli_recipes_shopping_list_page.png?updatedAt=1697474899145" alt="Shopping list for all recipes of user" width="550px" />
      </td>
    </tr>
    <tr>
      <td align="center">
        <p>All Recipes Page</p>
        <img src="https://ik.imagekit.io/dqd3uh1at/deli_recipes_recipes_page.png?updatedAt=1697474898233" alt="List of all recipes for a user" width="350px" />
      </td>
      <td align="center">
        <p>All Public Recipes Page</p>
        <img src="https://ik.imagekit.io/dqd3uh1at/deli_recipes_public_recipes_page.png?updatedAt=1697474899025" alt="List of all public recipes" width="400px" />
      </td>
    </tr>
  </table>

  <div align="center">
    <p>Recipe Details Page</p>
    <img src="https://ik.imagekit.io/dqd3uh1at/deli_recipes_recipe_details_page.png?updatedAt=1697474898591" alt="Details of a recipe including food in it" width="350px" />
</div>


<div align="center"><hr width="250px"/></div>

## 🛠 Built With <a name="built-with"></a>
- ### Tech Stack <a name="tech-stack"></a>

  <ul>
     <li>
      <a align="center" href="https://www.ruby-lang.org/en/">
      <img align="center" width="19" height="auto" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Ruby_logo.svg/198px-Ruby_logo.svg.png?20101129171534" alt="ruby logo" />
      Ruby
      </a>
    </li>
    <li>
      <a align="center" href="https://rubyonrails.org/">
      <img align="center" width="19" height="auto" src="https://ik.imagekit.io/dqd3uh1at/rails-red-logo.svg?updatedAt=1697475084871" alt="ruby logo" />
      Rails
      </a>
    </li>
    <li>
      <a align="center" href="https://www.postgresql.org/">
      <img align="center" width="19" height="auto" src="https://wiki.postgresql.org/images/3/30/PostgreSQL_logo.3colors.120x120.png" alt="postgreSQL logo" />
      PostgreSQL
      </a>
    </li>
  </ul>

<div align="center"><hr width="250px"/></div>

- ### Key Features <a name="key-features"></a>

  **Deli Recipes** it's a fully functional website where you'll be able to find a wide variety of delicious and popular recipes, from classic comfort food to international cuisine. Try _Deli Recipes_ today and start cooking like a pro!

  - **Registration** and **Login**, so you can keep your recipes private.
  - **Food list page** to keep track of ingredients, and inventory. It will allow you to _add_, _show_ and _delete_ food/ingredients, required for each of your recipes.
  - **Recipes List page** that will show all your recipes. It will allow you to _add_, _show_ and _delete_ recipes.
  - Create a **General Shopping List** that will show you all missing food required for all your recipes and its total price.
  - It will show a **List of all Public Recipes** from registered users with their names and total prices.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<div align="right"><hr width="250px"/></div>

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
<div align="right"><hr width="250px"/></div>

## 👥 Authors <a name="author"></a>
  👤 <b>Binyam Tegene</b>
  <ul>
    <li>
      <a align="center" href="https://github.com/Log-benjamin">
      <img align="center" width="18px" src="https://upload.wikimedia.org/wikipedia/commons/2/24/Github_logo_svg.svg" alt="github logo" />
      <b>@binyam tegene</b>
      </a>
    </li>
    <li>
      <a align="center" href="https://twitter.com/@binyam_tegene">
      <img align="center" width="18px" src="https://ik.imagekit.io/dqd3uh1at/x-new-logo.svg?updatedAt=1697475085598" alt="x logo" />
      <b>@binyam tegene</b>
      </a>
    </li>
    <li>
      <a align="center" href="https://www.linkedin.com/in/binyam-tegene-4b77ab265">
      <img align="center" width="18px" src="https://upload.wikimedia.org/wikipedia/commons/c/ca/LinkedIn_logo_initials.png" alt="linkedin logo" />
      <b>@binyam tegene</b>
      </a>
    </li>
  </ul>
  <br />

👨‍💻 <b>Luis Zubia</b>
  <ul>
    <li>
      <a align="center" href="https://github.com/luigirazum">
      <img align="center" width="18px" src="https://upload.wikimedia.org/wikipedia/commons/2/24/Github_logo_svg.svg" alt="github logo" />
      <b>@luigirazum</b>
      </a>
    </li>
    <li>
      <a align="center" href="https://twitter.com/LuigiRazum">
      <img align="center" width="18px" src="https://ik.imagekit.io/dqd3uh1at/x-new-logo.svg?updatedAt=1697475085598" alt="x logo" />
      <b>@LuigiRazum</b>
      </a>
    </li>
    <li>
      <a align="center" href="https://linkedin.com/in/luiszubia">
      <img align="center" width="18px" src="https://upload.wikimedia.org/wikipedia/commons/c/ca/LinkedIn_logo_initials.png" alt="linkedin logo" />
      <b>/luiszubia</b>
      </a>
    </li>
  </ul>

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<div align="right"><hr width="250px"/></div>

## 🔭 Future Features <a name="future-features"></a>

- **Organize** all your recipes, by categories.
- **Create** and **Share** shopping lists, for an individual recipe.
- **Rate** and **review** recipes.
- **Search** for recipes by *ingredient*, *cuisine*, or *occasion*.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<div align="right"><hr width="250px"/></div>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, typos, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<div align="right"><hr width="250px"/></div>

## ⭐️ Show your support <a name="support"></a>

If you like this project, your support giving a ⭐ will be highly appreciated.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<div align="right"><hr width="250px"/></div>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- We would like to thank [Yukihiro “Matz” Matsumoto](http://www.rubyist.net/~matz/) for creating the [Ruby Programming Language](https://www.ruby-lang.org/en/).
- Also thanks [David Heinemeier Hansson](https://en.wikipedia.org/wiki/David_Heinemeier_Hansson) for sharing [Rails](https://rubyonrails.org/) to the world.\
_**Wikipedia:** [Ruby on Rails - History](https://en.wikipedia.org/wiki/Ruby_on_Rails)_

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<div align="right"><hr width="250px"/></div>

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
<div align="right"><hr width="250px"/></div>
