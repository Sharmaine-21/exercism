import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Etl {

    public Etl() {}

    public Map<String, Integer> transform(Map<Integer, List<String>> old) {
        Map<String, Integer> xform = new HashMap<>();
        for(Map.Entry<Integer, List<String>> entry : old.entrySet()) {
            Integer k = entry.getKey();
            List<String> v = entry.getValue();
            for(int i = 0; i < v.size(); i++) {
                xform.put(v.get(i).toLowerCase(), k);
            }
        }
        return xform;
    }
}