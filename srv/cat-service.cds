using { anubhav.bookshop  } from '../db/schema';

service CatalogService @(path: '/browse'){
    entity Books as projection on bookshop.Books;
}
