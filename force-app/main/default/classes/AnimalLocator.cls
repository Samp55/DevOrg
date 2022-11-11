public class AnimalLocator {

    public static String getAnimalNameById(Integer id){
        Http http=new Http();
        HttpRequest request=new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+id);
        request.setMethod('GET');
        HttpResponse response=http.send(request);
        String strreq='';
        if(response.getStatusCode()==200){
            Map<String,object> results=(Map<String,object>) JSON.deserializeUntyped(response.getBody());
            Map<String,object> animal=(Map<String,object>) results.get('animal');
            strreq=string.valueOf(animal.get('name')); 
            
        }
        return strreq;
                
    }
}