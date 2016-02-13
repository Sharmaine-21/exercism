
import java.util.HashMap;
import java.util.Map;

public class WordCount {

    public static Map<String, Integer> Phrase(String phrase) {
        HashMap<String, Integer> wordList =  new HashMap<>();
        String[] words = phrase.split("\\W");
        for(String word : words) {
            if (word.matches("\\p{Alnum}+")) {
                wordList.put(word.toLowerCase(), getCount(word.toLowerCase(), words));
            }
        }
        return wordList;
    }

    private static int getCount(String word, String[] words) {
        int cnt = 0;
        for(int i = 0; i < words.length; i++) {
            word.toLowerCase();
            if(words[i].toLowerCase().equals(word.toLowerCase())) {
                cnt++;
            }
        }
        return cnt;
    }

}