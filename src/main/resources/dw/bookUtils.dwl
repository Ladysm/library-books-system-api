
fun mergeBookUpdates(current, incomingUpdates) =
  current update {
    case newVal at .author if (incomingUpdates.author? and incomingUpdates.author != current.author) -> incomingUpdates.author
    case newVal at .title if (incomingUpdates.title? and incomingUpdates.title != current.title) -> incomingUpdates.title
    case newVal at .publishedYear if (incomingUpdates.publishedYear? and incomingUpdates.publishedYear != current.publishedYear) -> incomingUpdates.publishedYear
    case newVal at .genre if (incomingUpdates.genre? and incomingUpdates.genre != current.genre) -> incomingUpdates.genre
    case newVal at .isbn if (incomingUpdates.isbn? and incomingUpdates.isbn != current.isbn) -> incomingUpdates.isbn
    case newVal at .pageCount if (incomingUpdates.pageCount? and incomingUpdates.pageCount != current.pageCount) -> incomingUpdates.pageCount
    case newVal at .language if (incomingUpdates.language? and incomingUpdates.language != current.language) -> incomingUpdates.language
    case newVal at .availableCopies if (incomingUpdates.availableCopies? and incomingUpdates.availableCopies != current.availableCopies) -> incomingUpdates.availableCopies
  }
fun removeId(obj) =
  obj filterObject ((value, key) -> key != "id")