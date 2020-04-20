# The 'Free Books' project

## Tasks

### Clone the existing Rails project

Go to [sharesight/tyson](https://github.com/sharesight/tyson) and clone the repo to your local environment.

rake db:create
git checkout -b my_free_books_solution

### Story 1: Let anyone browse and read books

Books have a title and some content. The list of books (the store's front page) is alphabetically sorted by title, and shows the title only. If you click on the title you should see a new page with the book's title and content.

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
