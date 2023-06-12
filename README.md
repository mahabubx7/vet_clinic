# Vet Clinic - Database

<a name="readme-top"></a>


<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
    <!-- - [🚀 Live Demo](#live-demo) -->
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  <!-- - [Deployment](#triangular_flag_on_post-deployment) -->
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [Vet Clinic] <a name="about-project"></a>

**[Vet Clinic]** is a psql (postgresql) based project for a vet clinic.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<!-- <details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://reactjs.org/">React.js</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://expressjs.com/">Express.js</a></li>
  </ul>
</details> -->

<details>
  <summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **[Pets neutered tracking]**
- **[Pets escape_attempts monitoring]**
- **[Species catalog]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

<!-- ## 🚀 Live Demo <a name="live-demo"></a>

Will be added later. -->

<!-- - [Live Demo Link](<replace-with-your-deployment-URL>) -->

<!-- <p align="right">(<a href="#readme-top">back to top</a>)</p> -->

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>.

This repository includes files with plain SQL that can be used to recreate a database:

- Use [schema.sql](./schema.sql) to create all tables.
- Use [data.sql](./data.sql) to populate tables with sample data.
- Check [queries.sql](./queries.sql) for examples of queries that can be run on a newly created database. **Important note: this file might include queries that make changes in the database (e.g., remove records). Use them responsibly!**

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

`psql` should be available

<!-- ```sh
 gem install rails
``` -->

```sh
 psql --version
```

### Setup

Clone this repository to your desired folder:

```sh
  git clone git@github.com:mahabubx7/vet_clinic.git
```

-

### Install

Install this project with:

<!--
Example command:

```sh
  cd my-project
  gem install
```
--->

```sh
  cd vet_clinic
  createdb vet_clinic;
  psql -U <your_username> -d vet_clinic
```

Now, copy `schema.sql` queries into the psql & execute to install schemas.
Later, copy `data.sql` queries into the psql to insert data.

### Usage

To run the project, execute the following command:

```sh
psql -U <your_username> -d vet_clinic
```

<!--
Example command:

```sh
  rails server
```
--->

### Run tests

Right now, it is not available for this project. Though you can query to get required values as testing.

<!-- To run tests, run the following command: -->

<!--
Example command:

```sh
  bin/rails test test/models/article_test.rb
```
--->

<!-- ### Deployment
Not applicable for now. -->

<!-- You can deploy this project using: -->

<!--
Example:

```sh

```
 -->

<!-- <p align="right">(<a href="#readme-top">back to top</a>)</p> -->

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Mahabub Alam**

- GitHub: [@mahabubx7](https://github.com/mahabubx7)
- Twitter: [@mahabub\_\_7](https://twitter.com/mahabub__7)
- LinkedIn: [in/linkedIn](https://linkedin.com/in/mahabubx7)

👤 **Lawrence Amoafo**

- GitHub: [@Kwaku28](https://github.com/Kwaku28)
- Twitter: [@kwakuamoafo](https://twitter.com/kwakuamoafo)
- LinkedIn: [lawrenceamoafo](https://linkedin.com/in/lawrenceamoafo)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **[Pets report card]**
- [ ] **[Appointment system]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project please give it a star.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank microverse.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ <a name="faq"></a>

- **[What is SQL?]**

  - [Structured Query Language]

- **[Why PostgreSQL?]**

  - [It one of best popular RDBMS & SQL database. Also it is open-source.]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
