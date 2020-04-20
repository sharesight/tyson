# The 'Free Books' project

## Tasks

### Create a new Rails project

Within the `tyson` repository, under `tyson/free_books`, create a new Rails application, according to the following requirements:

 * Rails 5, latest version
 * use `postgreql` or `mysql`
 * no coffee-script

**Solution**
```sh
  gem install rails --version 5.2.4.2
  rails -v

  rails new free_books --database mysql --skip-coffee

  cd free_books
  gem install bundler
  bundle

  rake db:create

  git checkout -b my_free_books_solution
  git add -A
  git commit -m "New Rails project based on rails new free_books --database mysql --skip-coffee"
  git push -u origin my_free_books_solution
```

### Story 1: Let anyone browse and read books

Books have a title and some content. The list of books (the store's front page) is alphabetically sorted by title, and shows the title only. If you click on the title you should see a new page with the book's title and content.

**Solution**
```sh
rails g model Book
# edit migration (add title and content)
# run migration
# edit Book model to add validation for title and content
rails g controller Books
# edit Books controller to add :index with title and link to show
# add tests
```

### Story 2: Let authors write new books

Provide a form to add a new book, with title and content.

### Story 3: Let authors edit their books

Provide a way to let authors edit the title and the content of their own books.

### Story 4: Let authors decide if a book is readable or not

Add a book status. Only published books get listed on the front page.

### Story 5: Don't let others read unpublished books

Since every book is available to read for everyone (authors want to give early access by sending urls around) we have to make sure that the book url is not guessable.

### Story 6: Provide stats per book

How often has each book been read, overall and in the last week?

### Non-Functional Requirements

 * no layouts or styles (we love pure HTML)
 * user authentication based on sessions
