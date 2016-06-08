import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author benny
 * @date 2016/6/8
 * @description
 */
public class LogBackTestTest {

    public static Logger LOGGER = LoggerFactory.getLogger(LogBackTest.class);

    public static void main(String[] args) {

        LOGGER.info("info");
        LOGGER.debug("debug");
        LOGGER.warn("warn");
        LOGGER.error("error");
    }
}