using { anubhav.helpdesk as db } from '../db/incident';

@path: 'helpdesk'
service HelpdeskService {
  @odata.draft.enabled
  entity Incidents  as projection on db.Incidents;
  @readonly
  entity Priorities as projection on db.Priorities;
}