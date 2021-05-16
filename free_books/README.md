# The 'Free Books' project

## Tasks

### Clone the existing Rails project

Go to [sharesight/tyson](https://github.com/sharesight/tyson) and clone the repo to your local environment.

```sh
# clone the project
git clone https://github.com/sharesight/tyson.git

# setup
cd tyson/free_books
gem install bundler
bundle

# create development and test databases (in sqlite3)
rake db:create
rake db:migrate

# run the tests
rake test

# create a new branch for your additions
git checkout -b my_free_books_solution
```

Start the Rails server and sign up. If you see a page with "Hello, Your Name" you are all set up!


### Story 1: Let anyone browse and read books (15 min)

**Requirements**:
1. Any user shall be able to see a **list of available books** in our store.  Books have a **title** and some **content**.
2. The **list of books** (the store's front page) is alphabetically **sorted by title**, and shows the title only.
3. If you click on the title you should see a **detail page** with the book's title and content.

**Hint**:
This story is about general Rails MVC (plus migrations). Please provide an initial set of books using _seeds_.


### Story 2: Let authors write new books (15 min)

**Requirements**:
1. Any (logged in) user shall be able to **add more books**.
2. The link to do so shall be **visible on the store's front page** (we want to see many people writing books and sell them through our store later).
3. Provide a **form to add a new book**, with **mandatory title** and maybe some content.

**Hint**:
This story is about forms and error handling. Check if a user is logged in.


### Story 3: Let authors edit their books (15 min)

**Requirements**:
1. Provide a way to let authors **edit the title and the content** of their **own books**.
2. Show **author name** in book list (not linked).

**Hint**:
This story is about access control.
