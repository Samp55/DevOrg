public class ParkLocator {
    public static String[] country(String country){
		ParkService.ParksImplPort countrylst=new ParkService.ParksImplPort();
        String[] cntryname=countrylst.byCountry(country);
        return cntryname;
        
    }
}