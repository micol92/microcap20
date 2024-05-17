using my.bookshop as my from '../db/data-model';

service CatalogService @(requires: 'any') {
    @readonly entity Books as projection on my.Books;
}

service RiskService {

  //@(requires: 'authenticated-user')  
  @(requires:'admin')
  entity Risks as projection on my.Risks;
    annotate Risks with @odata.draft.enabled;
    
  entity Mitigations as projection on my.Mitigations;
    annotate Mitigations with @odata.draft.enabled;
}