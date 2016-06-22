public class CommonCode {

	//Get Record Type ID.
	public static Map<String, Id> recTypesMap {
		get {
			if(recTypesMap == null) {
				recTypesMap = new Map<String, Id>(); 
				for(RecordType rec : [select id, DeveloperName, sObjectType from RecordType]) {
					recTypesMap.put(rec.sObjectType + '_' + rec.DeveloperName, rec.Id);
				}
			}
			return recTypesMap;
		}
	}
}
