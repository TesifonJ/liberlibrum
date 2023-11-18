package es.ausiasmarch.liberlibrum.helper;

import java.time.LocalDate;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

public class DataGenerationHelper {
    
    private static final String[] aNames = { "Mónica", "José Antonio", "Laura", "Lucas", "Eva", "Eloy", "Jesús", "Alan",
            "Pablo", "Paula", "Raquel", "Nieves", "Elena", "Sergio", "Jaime", "Fernando", "Rafael" };

    private static final String[] aSurnames = {
            "Alcañiz", "Puig", "Ayala", "Farell", "Ferrer", "Esteve", "González", "Rozalén", "Lara", "Velarte",
            "Latorre", "Briones", "Maldonado", "Suárez", "McLure", "Alarcón", "Molero", "Marín", "Muñoz", "García",
            "Navarro", "López", "Navas", "Aguilar", "Ortega", "Fabra", "Romero", "Díaz", "Cano", "Roselló", "Gómez",
            "Serrano", "Quilez", "Aznar", "Aparici"
    };

    private static final String[] aTitles = {
        "El Quijote", "El Señor de los Anillos", "El Principito", "El Hobbit", "Cien años de soledad", "Orgullo y prejuicio"
    };

    private static final String[] aAuthors = {
        "Miguel de Cervantes", "J.R.R. Tolkien", "Antoine de Saint-Exupéry", "Gabriel García Márquez", "Jane Austen"
    };

    private static final String[] aCategories = {
        "Novela", "Ciencia Ficción", "Fantasía", "Terror", "Romántica", "Histórica", "Infantil", "Juvenil", "Poesía"
    };

    public static String getRandomCategory() {
        return aCategories[(int) (Math.random() * aCategories.length)];
    }

    public static String getRandomAuthor() {
        return aAuthors[(int) (Math.random() * aAuthors.length)];
    }

    public static String getRandomTitle() {
        return aTitles[(int) (Math.random() * aTitles.length)];
    }

    public static String getRadomName() {
        return aNames[(int) (Math.random() * aNames.length)];
    }

    public static String getRadomSurname() {
        return aSurnames[(int) (Math.random() * aSurnames.length)];
    }

    public static String doNormalizeString(String cadena) {
        String original = "áàäéèëíìïóòöúùuñÁÀÄÉÈËÍÌÏÓÒÖÚÙÜÑçÇ";
        String ascii = "aaaeeeiiiooouuunAAAEEEIIIOOOUUUNcC";
        String cadenaSinAcentos = cadena;
        for (int i = 0; i < original.length(); i++) {
            cadenaSinAcentos = cadenaSinAcentos.replace(original.charAt(i), ascii.charAt(i));
        }
        return cadenaSinAcentos;
    }

    private static Random random = new Random();

    private static String[] articles = { "the", "a", "one" };
    private static String[] nouns = { "cat", "dog", "book", "birds", "sun", "sandwich", "friend", "car", "house" };
    private static String[] verbs = { "sleeps", "barks", "reads", "fly", "shines", "run", "ate", "is" };
    private static String[] adverbs = { "loudly", "quickly", "brightly", "slowly", "softly" };

    public static String generateSimpleSentence() {
        String subject = generateNounPhrase();
        String verb = generateVerbPhrase();
        return subject + " " + verb;
    }

    public static String generateNounPhrase() {
        String article = articles[random.nextInt(articles.length)];
        String noun = nouns[random.nextInt(nouns.length)];
        return article + " " + noun;
    }

    public static String generateVerbPhrase() {
        String verb = verbs[random.nextInt(verbs.length)];
        if (random.nextBoolean()) {
            String adverb = adverbs[random.nextInt(adverbs.length)];
            return verb + " " + adverb;
        } else {
            return verb;
        }
    }

    public static String getSpeech(int amount) {
        StringBuilder sentences = new StringBuilder();
        for (int i = 0; i < amount; i++) {
            String sentence = generateSimpleSentence();
            sentences.append(sentence.substring(0, 1).toUpperCase()).append(sentence.substring(1)).append(". ");
        }
        return sentences.toString();
    }

    public static LocalDate randomDate() {
        return LocalDate.ofEpochDay(ThreadLocalRandom.current().nextLong(LocalDate.of(2000, 1, 1).toEpochDay(), LocalDate.now().toEpochDay()));
    }
}
