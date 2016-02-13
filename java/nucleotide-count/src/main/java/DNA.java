import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;


public class DNA {

    protected String dna;
    protected Map<Character, Integer> tides;

    public DNA(String input) {
        dna = input;
        tides = new HashMap<>();
        for(Character n : Arrays.asList('G', 'A', 'C', 'T')) {
            tides.put(n, 0);
        }
    }

    public int count(char a) {
        if (!tides.containsKey(a)) {
            throw(new IllegalArgumentException("Invalid nucleotide"));
        }
        char[] dnarray = dna.toCharArray();
        int cnt = 0;
        for(int i = 0; i < dnarray.length; i++) {
            if(dnarray[i] == a) {
                cnt++;
            }
        }
        return cnt;
    }


    public Map<Character, Integer> nucleotideCounts() {
        char[] nc = dna.toCharArray();
        for (Character n : Arrays.asList('A', 'G', 'C', 'T')) {
            tides.put(n, 0);
        }
        for(int i = 0; i < nc.length; i++) {
            tides.replace(nc[i], count(nc[i]));
        }
        return tides;
    }
}