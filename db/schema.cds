namespace anubhav.bookshop;
using { managed, Currency } from '@sap/cds/common';


/**
 * Plain CDS entities - nothing MongoDB specific is needed.
 * Each entity becomes one MongoDB collection, e.g. anubhav_bookshop_Books.
 */
entity Books : managed {
  key ID       : Integer;
      title    : localized String(111) @mandatory;
      descr    : localized String(1111);
}