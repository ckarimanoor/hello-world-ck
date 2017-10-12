public class AccountsController {
	@AuraEnabled
    public static List<Account> getAccounts() {
        return [select id, name, industry, Type, NumberOfEmployees, TickerSymbol, Phone 
               FROM Account ORDER By createdDate ASC];
    }
}