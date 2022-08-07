import java.util.HashMap;
import java.util.Map;

/**
 * roman_to_integer
 */
public class roman_to_integer {

    public static void main(String args[]) {

        String s = "MCMXCIV";

        Map<Character, Integer> map = new HashMap<>();
        map.put('I', 1);
        map.put('V', 5);
        map.put('X', 10);
        map.put('L', 50);
        map.put('C', 100);
        map.put('D', 500);
        map.put('M', 1000);

        int result = map.get(s.charAt(s.length() - 1));
        System.out.println(result);
        for (int i = s.length() - 2; i >= 0; i--) {
            if (map.get(s.charAt(i)) < map.get(s.charAt(i + 1))) {
                // System.out.println(map.get(s.charAt(i)));
                // System.out.println(map.get(s.charAt(i + 1)));
         
                result -= map.get(s.charAt(i));
                System.out.println(result);
            } else {
                // System.out.println(map.get(s.charAt(i)));
                // System.out.println(map.get(s.charAt(i + 1)));
              
                result += map.get(s.charAt(i));
                System.out.println(result);
            }
        }
        System.out.println(result);

    }
}