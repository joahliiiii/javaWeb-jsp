package uuid;

import java.util.UUID;

public class commonsUtils {
    /**
     * 通用唯一识别码 (Universally Unique Identifier)
     * @return uuid
     */
    public static String uuid(){
        return UUID.randomUUID().toString().replaceAll("-","").toUpperCase();
    }
}
