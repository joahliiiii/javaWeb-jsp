package uuid;

import org.junit.Test;

import java.util.UUID;

public class uuidTest {
    @Test
    /**
     * 通用唯一识别码 (Universally Unique Identifier)
     */
    public void uuid(){
        UUID uuid=UUID.randomUUID();
        String strUuid = uuid.toString();
        String s = strUuid.replaceAll("-", "");
        String s1 = s.toUpperCase();
        System.out.println(s1);
//        System.out.println(uuid);
    }
}
