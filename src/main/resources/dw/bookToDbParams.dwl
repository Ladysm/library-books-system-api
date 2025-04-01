fun bookToDbParams(book, id) =
  {
    id: id as Number,
    title: book.title as String,
    author: book.author as String,
    publishedYear: book.publishedYear as Number,
    genre: book.genre as String,
    isbn: book.isbn as String,
    pageCount: book.pageCount as Number,
    language: book.language as String,
    availableCopies: book.availableCopies as Number
  }